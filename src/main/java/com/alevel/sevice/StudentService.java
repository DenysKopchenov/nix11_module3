package com.alevel.sevice;

import com.alevel.model.Student;
import com.alevel.repostory.StudentRepository;

import java.util.List;

public class StudentService {

    private StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }


    public List<Student> findStudentsWithAverageMarkGreaterThan(double userInputInteger) {
        return studentRepository.findStudentsWithAverageGreaterThan(userInputInteger);
    }
}
