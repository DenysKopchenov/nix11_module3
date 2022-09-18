package com.alevel.repostory.impl;

import com.alevel.model.Group;
import com.alevel.model.Student;
import com.alevel.repostory.GroupRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class GroupRepositoryImpl implements GroupRepository {

    private final SessionFactory sessionFactory;

    public GroupRepositoryImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Group> findGroupsByName(String name) {
        Session session = sessionFactory.openSession();
        return session.createQuery("from Group g where g.name like :name", Group.class)
                .setParameter("name", "%" + name + "%")
                .list();
    }

    @Override
    public Map<String, Long> countStudentsInEachGroup() {
        try (Session session = sessionFactory.openSession()) {
            List<Object> list = session.createQuery("select s.group.name, count(s.id) from Student s group by s.group.name").getResultList();
            Map<String, Long> studentsByGroup = new HashMap<>();
            list.forEach(pair -> {
                Object[] o = (Object[]) pair;
                studentsByGroup.put((String) o[0], (Long) o[1]);
            });
            return studentsByGroup;
        }
    }

    @Override
    public Map<String, Double> getAverageMarkByGroup() {
        try (Session session = sessionFactory.openSession()) {
            List<Group> fromGroupG = session.createQuery("from Group g", Group.class).getResultList();
            Map<String, Double> result = new HashMap<>();
            fromGroupG.forEach(group -> {
                AtomicReference<Double> sumOfAllMarksInGroup = new AtomicReference<>(0.0);
                Set<Student> students = group.getStudents();
                int numberOfStudents = students.size();
                students.forEach(student -> {
                    Double studentAverageMark = session.createQuery("select avg(mark) from Mark m where m.student.id = :id", Double.class)
                            .setParameter("id", student.getId())
                            .getSingleResult();
                    if (studentAverageMark != null) {
                        sumOfAllMarksInGroup.getAndUpdate(v -> (v + studentAverageMark));
                    }
                });
                if (numberOfStudents != 0) {
                    result.put(group.getName(), sumOfAllMarksInGroup.get() / numberOfStudents);
                }
            });
            return result;
        }
    }

    @Override
    public void saveAll(List<Group> groups) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        groups.forEach(session::persist);
        session.getTransaction().commit();
    }
}
