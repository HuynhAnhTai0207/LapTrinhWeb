package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.JDBCConnector;
import vn.edu.hcmuaf.fit.entity.Account;
import vn.edu.hcmuaf.fit.entity.Products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    public List<Products> getListProducts(String category) {
        List<Products> listProducts = new ArrayList<>();

        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement;
            if(category==null){
                String query = "SELECT * FROM product";
                statement = connection.prepareStatement(query);
            }
            else {
                String query = "SELECT * FROM product where category=?";
                statement = connection.prepareStatement(query);
                statement.setString(1, category);
            }
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Products product =  new Products(
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
                listProducts.add(product);
            }

            return listProducts;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
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