package com.alevel.command;

import com.alevel.sevice.GroupService;
import com.alevel.sevice.ServiceContainer;

import java.util.Map;

public class GetAverageMarkForGroup implements Command {

    private GroupService groupService;

    public GetAverageMarkForGroup() {
        groupService = ServiceContainer.getGroupService();
    }

    @Override
    public void execute() {
        System.out.println("Average mark in group");
        Map<String, Double> averageMarkForGroup = groupService.getAverageMarkForGroup();
        averageMarkForGroup.forEach((k, v) -> System.out.println("Group: " + k + ", average mark = " + v));
    }
}
