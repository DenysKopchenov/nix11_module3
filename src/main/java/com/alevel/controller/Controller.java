package com.alevel.controller;

import com.alevel.command.Command;
import com.alevel.command.Commands;
import com.alevel.config.FlywayConfig;
import com.alevel.config.HibernateUtil;
import com.alevel.util.InputUtil;
import org.flywaydb.core.Flyway;

import java.util.Arrays;
import java.util.List;

public class Controller {

    public Controller() {
        init();
    }

    public void run() {
        int userInput = selectAction();
        while (userInput < 6) {
            Commands[] commands = Commands.values();
            Command command = commands[userInput].getCommand();
            command.execute();
            repeatOrAnotherAction(command);
            userInput = selectAction();
        }
    }


    private void init() {
        Flyway flyway = FlywayConfig.configureFlyway();
        flyway.clean();
        flyway.migrate();
        HibernateUtil.getSessionFactory();
    }

    private int selectAction() {
        System.out.println("Select action");
        return InputUtil.getUserInput(Arrays.stream(Commands.values())
                .map(Commands::getName)
                .toList());
    }

    private void repeatOrAnotherAction(Command command) {
        int input = InputUtil.getUserInput(List.of("Repeat", "Other Action"));
        while (input >= 0) {
            switch (input) {
                case 0 -> command.execute();
                case 1 -> {
                    return;
                }
                default -> System.out.println("Wrong input");
            }
            input = InputUtil.getUserInput(List.of("Repeat", "Other Action"));
        }
    }
}
