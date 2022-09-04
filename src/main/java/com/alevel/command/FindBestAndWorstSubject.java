package com.alevel.command;

import com.alevel.sevice.ServiceContainer;
import com.alevel.sevice.SubjectService;
import com.alevel.util.InputUtil;

import java.util.List;

public class FindBestAndWorstSubject implements Command {

    private SubjectService subjectService;

    public FindBestAndWorstSubject() {
        subjectService = ServiceContainer.getSubjectService();
    }

    @Override
    public void execute() {
        int userInput = InputUtil.getUserInput(List.of("Best subject", "Worst subject"));
        if (userInput == 0) {
            System.out.println(subjectService.findSubject(true));
        } else {
            System.out.println(subjectService.findSubject(false));
        }
    }
}
