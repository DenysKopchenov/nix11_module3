package com.alevel.command;

import com.alevel.model.Teacher;
import com.alevel.sevice.ServiceContainer;
import com.alevel.sevice.TeacherService;
import com.alevel.util.InputUtil;

import java.util.List;

public class FindTeachers implements Command {

    private final TeacherService teacherService;

    public FindTeachers() {
        this.teacherService = ServiceContainer.getTeacherService();
    }

    @Override
    public void execute() {
        System.out.println("Enter teacher first name or last name");
        String name = InputUtil.getString();
        List<Teacher> teachersByFirsNameOrLastName = teacherService.findTeachersByFirsNameOrLastName(name);
        teachersByFirsNameOrLastName.forEach(System.out::println);
    }
}
