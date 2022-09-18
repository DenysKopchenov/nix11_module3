package com.alevel.config;

import org.flywaydb.core.Flyway;

public class FlywayConfig {

    private static final String LOCATION = "db/migration";

    private static final String URL = System.getenv("JDBC_DB_URL");
    private static final String USER = System.getenv("DB_USER");
    private static final String PASSWORD = System.getenv("DB_PASSWORD");
    private static final String SCHEMA = "module_3";

    private FlywayConfig() {
    }

    public static Flyway configureFlyway() {
        return Flyway.configure()
                .dataSource(URL, USER, PASSWORD)
                .schemas(SCHEMA)
                .baselineOnMigrate(true)
                .locations(LOCATION)
                .load();
    }
}