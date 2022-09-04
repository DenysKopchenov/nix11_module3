package com.alevel.command;

import lombok.Getter;

@Getter
public enum Commands {
    FIND_BY_NAME("Find by group name", new FindGroupByName()),
    COUNT_STUDENTS_IN_GROUP("Count students in groups", new CountStudentsInEachGroup()),
    AVERAGE_MARK_BY_GROUP("Average mark by group", new GetAverageMarkForGroup()),
    FIND_TEACHERS("Find teachers", new FindTeachers()),
    FIND_BEST_OR_WORST_SUBJECT("Find best or worst subject", new FindBestAndWorstSubject()),
    FIND_STUDENT_WITH_AVERAGE_MARK_GREATER_THAN("Find students with average mark greater", new FindStudentsWithAverageMarkGreaterThen()),
    EXIT("Exit", new Exit());

    private final String name;
    private final Command command;

    Commands(String name, Command command) {
        this.name = name;
        this.command = command;
    }
}
