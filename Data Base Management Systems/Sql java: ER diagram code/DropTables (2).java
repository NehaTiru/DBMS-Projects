package database;

import java.sql.*;

public class DropTables {
    public static void main(String[] args) {
        String dbServer = "jdbc:mysql://localhost:3306/university";
        String userName = "coms363";
        String password = "password";

        try (Connection conn = DriverManager.getConnection(dbServer, userName, password);
             Statement statement = conn.createStatement()) {

            conn.setAutoCommit(false);

            // Drop tables in reverse order of creation to handle foreign key constraints
            String[] dropStatements = new String[] {
                "DROP TABLE IF EXISTS register",
                "DROP TABLE IF EXISTS major",
                "DROP TABLE IF EXISTS minor",
                "DROP TABLE IF EXISTS courses",
                "DROP TABLE IF EXISTS degrees",
                "DROP TABLE IF EXISTS departments",
                "DROP TABLE IF EXISTS students"
            };

            // Execute drop statements
            for (String stmt : dropStatements) {
                statement.executeUpdate(stmt);
            }

            conn.commit();
            System.out.println("All tables dropped successfully");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
