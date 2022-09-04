package com.alevel.sevice;

import com.alevel.dto.GroupDto;
import com.alevel.model.Group;
import com.alevel.repostory.GroupRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class GroupService {

    private GroupRepository groupRepository;

    public GroupService(GroupRepository groupRepository) {
        this.groupRepository = groupRepository;
    }

    public List<GroupDto> findByGroupName(String groupName) {
        List<Group> groupsByName = groupRepository.findGroupsByName(groupName);
        System.out.println(groupsByName);
        return groupsByName.stream()
                .map(group -> new GroupDto(group.getName(), new ArrayList<>(group.getStudents())))
                .toList();
    }

    public Map<String, Long> countStudentsInEachGroup() {
        return groupRepository.countStudentsInEachGroup();
    }

    public Map<String, Double> getAverageMarkForGroup() {
        return groupRepository.getAverageMarkByGroup();
    }
}
