package database;

import java.sql.*;

public class Query {
    public static void main(String[] args) {
        String dbServer = "jdbc:mysql://localhost:3306/university";
        String userName = "coms363";
        String password = "password";

        try (Connection conn = DriverManager.getConnection(dbServer, userName, password);
             Statement statement = conn.createStatement()) {

            // Query 1: The student number and ssn of the student whose name is "Becky"
        	System.out.println("Query 1:");
            ResultSet rs1 = statement.executeQuery("SELECT snum, ssn FROM students WHERE name = 'Becky'");
            while (rs1.next()) {
                System.out.println("Student Number: " + rs1.getInt("snum") + ", SSN: " + rs1.getInt("ssn"));
            }

            // Query 2: The major name and major level of the student whose ssn is 123097834
        	System.out.println("\nQuery 2:");

            ResultSet rs2 = statement.executeQuery("SELECT name, level FROM major WHERE snum = (SELECT snum FROM students WHERE ssn = 123097834)");
            while (rs2.next()) {
                System.out.println("Major Name: " + rs2.getString("name") + ", Level: " + rs2.getString("level")+ "; (Student SSN: 123097834)");
            }

            // Query 3: The names of all courses offered by the department of Computer Science
        	System.out.println("\nQuery 3:");

            ResultSet rs3 = statement.executeQuery("SELECT name FROM courses WHERE department_code = (SELECT code FROM departments WHERE name = 'Computer Science')");
            while (rs3.next()) {
                System.out.println("Course: " + rs3.getString("name"));
            }

            // Query 4: All degree names and levels offered by the department Computer Science
        	System.out.println("\nQuery 4:");

            ResultSet rs4 = statement.executeQuery("SELECT name, level FROM degrees WHERE department_code = 401");
            while (rs4.next()) {
                System.out.println("Degree: " + rs4.getString("name") + ", Level: " + rs4.getString("level"));
            }

            // Query 5: The names of all students who have a minor
        	System.out.println("\nQuery 5:");

            ResultSet rs5 = statement.executeQuery("SELECT DISTINCT name FROM students WHERE snum IN (SELECT snum FROM minor)");
            while (rs5.next()) {
                System.out.println("Student with Minor: " + rs5.getString("name"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
