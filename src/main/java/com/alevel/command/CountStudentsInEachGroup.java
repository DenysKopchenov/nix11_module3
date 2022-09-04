package com.alevel.command;

import com.alevel.sevice.GroupService;
import com.alevel.sevice.ServiceContainer;

import java.util.Map;

public class CountStudentsInEachGroup implements Command {

    private GroupService groupService;

    public CountStudentsInEachGroup() {
        this.groupService = ServiceContainer.getGroupService();
    }

    @Override
    public void execute() {
        Map<String, Long> groupNameWithStudentsCount = groupService.countStudentsInEachGroup();
        groupNameWithStudentsCount.forEach((k, v) -> System.out.println("Group: " + k + " number of students = " + v));
    }
}
