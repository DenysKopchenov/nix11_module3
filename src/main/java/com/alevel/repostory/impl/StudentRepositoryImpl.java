package com.alevel.repostory.impl;

import com.alevel.model.Student;
import com.alevel.repostory.StudentRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class StudentRepositoryImpl implements StudentRepository {

    private SessionFactory sessionFactory;

    public StudentRepositoryImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void save(Student student) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.persist(student);
        session.getTransaction().commit();
        session.close();
    }

    public List<Student> findStudentsWithAverageGreaterThan(double reference) {
        Session session = sessionFactory.openSession();
        return session.createQuery("from Student s where (select avg(m.mark) from Mark m where m.student.id = s.id) > :ref", Student.class)
                .setParameter("ref", reference)
                .list();
    }
}
