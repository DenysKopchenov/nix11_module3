package com.alevel.command;

import com.alevel.model.Student;
import com.alevel.sevice.ServiceContainer;
import com.alevel.sevice.StudentService;
import com.alevel.util.InputUtil;

import java.util.List;

public class FindStudentsWithAverageMarkGreaterThen implements Command {

    private StudentService studentService;

    public FindStudentsWithAverageMarkGreaterThen() {
        this.studentService = ServiceContainer.getStudentService();
    }

    @Override
    public void execute() {
        System.out.println("Students with average mark greater than");
        System.out.println("Enter lower bound average mark");
        double userInputInteger = InputUtil.getUserInputDouble();
        List<Student> studentsWithAverageMarkGreaterThan = studentService.findStudentsWithAverageMarkGreaterThan(userInputInteger);
        if (studentsWithAverageMarkGreaterThan.isEmpty()) {
            System.out.println("No students with average mark greater than " + userInputInteger);
        }
        studentsWithAverageMarkGreaterThan.forEach(student -> System.out.printf("Student with average mark greater than %.2f: %s%n", userInputInteger, student));
    }
}
