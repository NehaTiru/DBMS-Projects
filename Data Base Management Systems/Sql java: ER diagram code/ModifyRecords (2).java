package database;

import java.sql.*;

public class ModifyRecords {
    public static void main(String[] args) {
        String dbServer = "jdbc:mysql://localhost:3306/university";
        String userName = "coms363";
        String password = "password";

        try (Connection conn = DriverManager.getConnection(dbServer, userName, password);
             Statement statement = conn.createStatement()) {

            conn.setAutoCommit(false);

            // Update 1: Change the name of the student with ssn = 746897816 to Scott
            statement.executeUpdate("UPDATE students SET name = 'Scott' WHERE ssn = 746897816");
            

            // Update 2: Change the major of the student with ssn = 746897816 to Computer Science Master
            statement.executeUpdate("UPDATE major SET name = 'Computer Science', level = 'MS' WHERE snum = (SELECT snum FROM students WHERE ssn = 746897816)");

            // Update 3: Delete all registration records that were in “Spring2021”
            statement.executeUpdate("DELETE FROM register WHERE regtime = 'Spring2021'");

            conn.commit();

            System.out.println("Records have been modified successfully");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
