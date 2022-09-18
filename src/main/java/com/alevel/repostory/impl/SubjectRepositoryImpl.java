package com.alevel.repostory.impl;

import com.alevel.model.Subject;
import com.alevel.repostory.SubjectRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;
import java.util.Map;

public class SubjectRepositoryImpl implements SubjectRepository {

    private static final String QUERY = "select avg(m.mark), m.subject.id from Mark m group by m.subject.id order by avg(m.mark) desc";
    private SessionFactory sessionFactory;

    public SubjectRepositoryImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Map<Double, Subject> findBetterSubject() {
        Session session = sessionFactory.openSession();
        List<Object[]> resultList = getSubjectListWithMarks(session);
        Object[] better = resultList.get(0);
        return Map.of((Double) better[0], session.find(Subject.class, better[1]));
    }

    @Override
    public Map<Double, Subject> findWorstSubject() {
        Session session = sessionFactory.openSession();
        List<Object[]> resultList = getSubjectListWithMarks(session);
        Object[] worst = resultList.get(resultList.size() - 1);
        return Map.of((Double) worst[0], session.find(Subject.class, worst[1]));
    }

    private List<Object[]> getSubjectListWithMarks(Session session) {
        return session
                .createQuery(QUERY)
                .getResultList();
    }

}
