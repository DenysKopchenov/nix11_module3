package com.alevel.repostory;

import com.alevel.model.Teacher;

import java.util.List;

public interface TeacherRepository {

    List<Teacher> findByFirstNameOrLastName(String name);
}
