package database;

import java.sql.*;

public class CreateTables {
    public static void main(String[] args) {
        String dbServer = "jdbc:mysql://localhost:3306/university";
        String userName = "coms363";
        String password = "password";

        try (Connection conn = DriverManager.getConnection(dbServer, userName, password);
             Statement statement = conn.createStatement()) {

            conn.setAutoCommit(false);

            String createStudentsTable = "CREATE TABLE students (" +
                    "snum INTEGER, " +
                    "ssn INTEGER NOT NULL, " +
                    "name VARCHAR(10), " +
                    "gender VARCHAR(1), " +
                    "dob DATETIME, " +
                    "c_addr VARCHAR(20), " +
                    "c_phone VARCHAR(10), " +
                    "p_addr VARCHAR(20), " +
                    "p_phone VARCHAR(10), " +
                    "PRIMARY KEY (ssn), " +
                    "UNIQUE (snum))";

            String createDepartmentsTable = "CREATE TABLE departments (" +
                    "code INTEGER NOT NULL, " +
                    "name VARCHAR(50), " +
                    "phone VARCHAR(10), " +
                    "college VARCHAR(20), " +
                    "PRIMARY KEY (code), " +
                    "UNIQUE (name))";

            String createDegreesTable = "CREATE TABLE degrees (" +
                    "name VARCHAR(50), " +
                    "level VARCHAR(5), " +
                    "department_code INTEGER, " +
                    "PRIMARY KEY (name, level), " +
                    "FOREIGN KEY (department_code) REFERENCES departments(code))";

            String createCoursesTable = "CREATE TABLE courses (" +
                    "number INTEGER NOT NULL, " +
                    "name VARCHAR(50), " +
                    "description VARCHAR(50), " +
                    "credithours INTEGER, " +
                    "level VARCHAR(20), " +
                    "department_code INTEGER, " +
                    "PRIMARY KEY (number), " +
                    "FOREIGN KEY (department_code) REFERENCES departments(code))";

            String createRegisterTable = "CREATE TABLE register (" +
                    "snum INTEGER, " +
                    "course_number INTEGER, " +
                    "regtime VARCHAR(20), " +
                    "grade INTEGER, " +
                    "PRIMARY KEY (snum, course_number), " +
                    "FOREIGN KEY (snum) REFERENCES students(snum), " +
                    "FOREIGN KEY (course_number) REFERENCES courses(number))";

            String createMajorTable = "CREATE TABLE major (" +
                    "snum INTEGER, " +
                    "name VARCHAR(50), " +
                    "level VARCHAR(5), " +
                    "PRIMARY KEY (snum, name, level), " +
                    "FOREIGN KEY (snum) REFERENCES students(snum), " +
                    "FOREIGN KEY (name, level) REFERENCES degrees(name, level))";

            String createMinorTable = "CREATE TABLE minor (" +
                    "snum INTEGER, " +
                    "name VARCHAR(50), " +
                    "level VARCHAR(5), " +
                    "PRIMARY KEY (snum, name, level), " +
                    "FOREIGN KEY (snum) REFERENCES students(snum), " +
                    "FOREIGN KEY (name, level) REFERENCES degrees(name, level))";

            // Add create table statements to batch
            statement.addBatch(createStudentsTable);
            statement.addBatch(createDepartmentsTable);
            statement.addBatch(createDegreesTable);
            statement.addBatch(createCoursesTable);
            statement.addBatch(createRegisterTable);
            statement.addBatch(createMajorTable);
            statement.addBatch(createMinorTable);

            // Execute batch
            statement.executeBatch();
            conn.commit();
            System.out.println("All tables created successfully");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
