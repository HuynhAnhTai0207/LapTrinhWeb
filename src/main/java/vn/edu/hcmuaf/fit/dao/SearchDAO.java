package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.JDBCConnector;
import vn.edu.hcmuaf.fit.entity.Products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class SearchDAO {
    Connection connection = null; // mở kết nối đến sql
    PreparedStatement statement = null; // ném câu lệnh sql đến navicat
    ResultSet resultSet = null;

    public List<Products> searchByName(String search) {
        List<Products> listProduct = new ArrayList<>();
        String query = "SELECT * FROM product WHERE name LIKE ?";
        try {
            Connection connection = JDBCConnector.getConnection();
            statement = connection.prepareStatement(query);
            statement.setString(1, "%" + search + "%");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Products product = new Products(
                        resultSet.getString("id_Product"),
                        resultSet.getString("name"),
                        resultSet.getInt("price"),
                        resultSet.getString("category"),
                        resultSet.getString("stock"),
                        resultSet.getInt("price_buy"),
                        resultSet.getInt("quantity"),
                        resultSet.getInt("product_sold"),
                        resultSet.getString("detail")
                );
                setImageInProduct(product);
                listProduct.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listProduct;
    }
    private void setImageInProduct(Products products){
        String query = "SELECT * FROM product_images where id_Product=?";
        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, products.getId());
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                products.getImages().add(resultSet.getString("link"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }



}
