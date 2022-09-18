package com.alevel.util;

import org.apache.commons.lang3.StringUtils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

/**
 * Util for get different users inputs
 */
public final class InputUtil {

    private static final BufferedReader READER = new BufferedReader(new InputStreamReader(System.in));

    private InputUtil() {
    }


    public static int getUserInput(List<String> names) {
        try {
            while (true) {
                System.out.printf("Enter number between 0 and %d%n", names.size() - 1);
                for (int i = 0; i < names.size(); i++) {
                    System.out.printf("%s) %s%n", i, names.get(i));
                }
                String line = READER.readLine();
                if (StringUtils.isNumeric(line)) {
                    int input = Integer.parseInt(line);
                    if (input >= names.size()) {
                        System.out.println("Wrong input");
                    } else {
                        return input;
                    }
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static int getUserInputInteger() {
        try {
            while (true) {
                System.out.println("Enter integer number");
                String line = READER.readLine();
                if (StringUtils.isNumeric(line)) {
                    return Integer.parseInt(line);
                }
                System.out.println("Wrong input");
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static double getUserInputDouble() {
        try {
            while (true) {
                System.out.println("Enter double number");
                String line = READER.readLine();
                if (StringUtils.isNumeric(line)) {
                    return Double.parseDouble(line);
                }
                System.out.println("Wrong input");
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static String getString() {
        try {
            while (true) {
                System.out.println("Enter string");
                String line = READER.readLine();
                if (StringUtils.isNoneBlank(line)) {
                    return line;
                } else {
                    System.out.println("Model must be not empty");
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
