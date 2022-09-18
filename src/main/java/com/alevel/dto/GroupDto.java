package com.alevel.dto;

import com.alevel.model.Student;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;


@AllArgsConstructor
@Getter
@Setter
@ToString
public class GroupDto {

    private String name;
    private List<Student> studentList;
}
