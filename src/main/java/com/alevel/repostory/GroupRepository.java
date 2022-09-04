package com.alevel.repostory;

import com.alevel.model.Group;

import java.util.List;
import java.util.Map;

public interface GroupRepository {

    List<Group> findGroupsByName(String name);

    Map<String, Long> countStudentsInEachGroup();

    Map<String, Double> getAverageMarkByGroup();

    void saveAll(List<Group> groups);
}
