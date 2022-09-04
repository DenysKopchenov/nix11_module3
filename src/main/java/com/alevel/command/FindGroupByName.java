package com.alevel.command;

import com.alevel.dto.GroupDto;
import com.alevel.sevice.GroupService;
import com.alevel.sevice.ServiceContainer;
import com.alevel.util.InputUtil;

import java.util.List;

public class FindGroupByName implements Command {

    private GroupService groupService;

    public FindGroupByName() {
        groupService = ServiceContainer.getGroupService();
    }

    @Override
    public void execute() {
        System.out.println("Enter group name");
        String groupName = InputUtil.getString();
        List<GroupDto> byGroupName = groupService.findByGroupName(groupName);
        if (byGroupName.isEmpty()) {
            System.out.println("No groups found");
        } else {
            byGroupName.forEach(System.out::println);
        }
    }
}
