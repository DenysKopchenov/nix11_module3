package com.alevel.repostory.impl;

import com.alevel.model.Teacher;
import com.alevel.repostory.TeacherRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class TeacherRepositoryImpl implements TeacherRepository {

    private SessionFactory sessionFactory;

    public TeacherRepositoryImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Teacher> findByFirstNameOrLastName(String name) {
        Session session = sessionFactory.openSession();
        return session.createQuery("from Teacher t where t.firstName = :firstName or t.lastName = :lastName", Teacher.class)
                .setParameter("firstName", name)
                .setParameter("lastName", name)
                .getResultList();
    }
}
