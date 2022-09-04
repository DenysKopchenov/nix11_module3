package com.alevel.sevice;

import com.alevel.model.Teacher;
import com.alevel.repostory.TeacherRepository;

import java.util.List;

public class TeacherService {

    private TeacherRepository teacherRepository;

    public TeacherService(TeacherRepository teacherRepository) {
        this.teacherRepository = teacherRepository;
    }

    public List<Teacher> findTeachersByFirsNameOrLastName(String name) {
        return teacherRepository.findByFirstNameOrLastName(name);
    }
}
