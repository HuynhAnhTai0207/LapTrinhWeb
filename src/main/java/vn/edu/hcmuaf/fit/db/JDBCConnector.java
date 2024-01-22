package vn.edu.hcmuaf.fit.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnector {
    private static String DB_URL = "jdbc:mysql://localhost:3306/cake_baker";
    private static Connection connection ;
    public static Connection getConnection(){
        if (connection == null) {
            try {
                // connect
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(DB_URL, "root", "");
            } catch (SQLException e) {
                e.printStackTrace();
                throw new RuntimeException(e.getMessage());
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        return connection;
    }

    public static void closeConnection(){
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Close Connection");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }




}
