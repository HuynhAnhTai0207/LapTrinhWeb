package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.JDBCConnector;
import vn.edu.hcmuaf.fit.entity.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAO {
    Connection connection = null; // mở kết nối đến sql
    PreparedStatement statement = null; // ném câu lệnh sql đến navicat
    ResultSet resultSet = null;

    public Account checkLogin(String userName, String password) {

        String query = "SELECT * FROM customer WHERE userName = ? AND password = ?";
        try {
            Connection connection = JDBCConnector.getConnection();
            statement = connection.prepareStatement(query);
            statement.setString(1, userName);
            statement.setString(2, password);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Account account =  new Account(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5)
                );
                return account;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return null;
    }
    }

