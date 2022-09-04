package com.alevel.sevice;

import com.alevel.config.HibernateUtil;
import com.alevel.repostory.impl.GroupRepositoryImpl;
import com.alevel.repostory.impl.StudentRepositoryImpl;
import com.alevel.repostory.impl.SubjectRepositoryImpl;
import com.alevel.repostory.impl.TeacherRepositoryImpl;
import org.hibernate.SessionFactory;

public class ServiceContainer {

    private static final SessionFactory SESSION_FACTORY;
    private static final GroupService GROUP_SERVICE;
    private static final TeacherService TEACHER_SERVICE;
    private static final SubjectService SUBJECT_SERVICE;
    private static final StudentService STUDENT_SERVICE;

    static {
        SESSION_FACTORY = HibernateUtil.getSessionFactory();
        GROUP_SERVICE = new GroupService(new GroupRepositoryImpl(SESSION_FACTORY));
        TEACHER_SERVICE = new TeacherService(new TeacherRepositoryImpl(SESSION_FACTORY));
        SUBJECT_SERVICE = new SubjectService(new SubjectRepositoryImpl(SESSION_FACTORY));
        STUDENT_SERVICE = new StudentService(new StudentRepositoryImpl(SESSION_FACTORY));
    }

    private ServiceContainer() {
    }

    public static GroupService getGroupService() {
        return GROUP_SERVICE;
    }

    public static TeacherService getTeacherService() {
        return TEACHER_SERVICE;
    }

    public static SubjectService getSubjectService() {
        return SUBJECT_SERVICE;
    }

    public static StudentService getStudentService() {
        return STUDENT_SERVICE;
    }
}
