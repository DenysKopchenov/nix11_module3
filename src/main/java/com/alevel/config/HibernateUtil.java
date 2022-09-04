package com.alevel.config;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import java.util.HashMap;
import java.util.Map;

public class HibernateUtil {

    private static SessionFactory sessionFactory;

    private HibernateUtil() {
    }

    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            Map<String, String> dbSettings = new HashMap<>();
            dbSettings.put("hibernate.connection.url", System.getenv("JDBC_DB_URL"));
            dbSettings.put("hibernate.connection.username", System.getenv("DB_USER"));
            dbSettings.put("hibernate.connection.password", System.getenv("DB_PASSWORD"));
            StandardServiceRegistry standardServiceRegistry = new StandardServiceRegistryBuilder()
                    .configure()
                    .applySettings(dbSettings)
                    .build();
            try {
                sessionFactory = new MetadataSources(standardServiceRegistry)
                        .buildMetadata()
                        .buildSessionFactory();
            } catch (Exception e) {
                StandardServiceRegistryBuilder.destroy(standardServiceRegistry);
            }

        }
        return sessionFactory;
    }
}
