package com.alevel.repostory;

import com.alevel.model.Student;

import java.util.List;

public interface StudentRepository {

    List<Student> findStudentsWithAverageGreaterThan(double reference);
}
