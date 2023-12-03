package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.JDBCConnector;
import vn.edu.hcmuaf.fit.entity.Account;

import java.sql.*;

public class CustomerDAO {
    Connection connection = null; // mở kết nối đến sql
    PreparedStatement statement = null; // ném câu lệnh sql đến navicat
    ResultSet resultSet = null;

    public Account checkLogin(String email, String password) {

        String query = "SELECT * FROM customer\n" +
                "WHERE email = ? AND password = ?";
//        System.out.println("SQL Query: " + query);

        try {
            Connection connection = JDBCConnector.getConnection();
            statement = connection.prepareStatement(query);
            statement.setString(1, email);
            statement.setString(2, password);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Account account =  new Account(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8),
                        resultSet.getInt(9),
                        resultSet.getDate(10)
                );
                return account;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return null;
    }

    public void updatePassword(String email, String hashedPassword) {
        String updateQuery = "UPDATE customer SET password = ? WHERE email = ?";
        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement = connection.prepareStatement(updateQuery);
            statement.setString(1, hashedPassword);
            statement.setString(2, email);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Account checkAccountExit(String email) {

        String query = "SELECT * FROM customer WHERE email = ?";
        try {
            Connection connection = JDBCConnector.getConnection();
            statement = connection.prepareStatement(query);
            statement.setString(1, email);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Account account =  new Account(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8),
                        resultSet.getInt(9),
                        resultSet.getDate(10)
                );
                return account;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return null;
    }

    public Account signup(String firstname, String lastname, String email, String password, int phone) {
        String query = "INSERT INTO customer (firstName, lastName, fullName, email, password, role, address, phone, createTime) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            Connection connection = JDBCConnector.getConnection();
            statement = connection.prepareStatement(query);
            statement.setString(1, firstname);
            statement.setString(2, lastname);
            statement.setString(3, firstname + " " + lastname); // Tạo fullName từ firstName và lastName
            statement.setString(4, email);
            statement.setString(5, password);
            statement.setString(6, "user");
            statement.setString(7, "219/4");
            statement.setInt(8, phone);
            statement.setDate(9, new java.sql.Date(System.currentTimeMillis())); // Thời gian tạo là thời điểm hiện tại

            // Thực hiện lệnh chèn dữ liệu
            int rowsAffected = statement.executeUpdate();

            // Kiểm tra xem có hàng bị ảnh hưởng hay không
            if (rowsAffected > 0) {
                // Trả về một tài khoản mới
                return new Account();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


}

