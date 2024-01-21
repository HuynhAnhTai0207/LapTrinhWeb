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
import java.util.logging.Level;
import java.util.logging.Logger;

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
            statement.setString(1, products.getId_Product());
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                products.getImages().add(resultSet.getString("link"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public Products getProductById(String id_Product) {
        Products product = null;
        try {
            Connection connection = JDBCConnector.getConnection();
            String query = "SELECT * FROM product WHERE id_Product=?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, id_Product);

            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                product = new Products(
    public List<Products> getListProductsByPriceRange(String priceRange) {
        List<Products> productList = new ArrayList<>();
        String query = "SELECT * FROM product WHERE price BETWEEN 0 AND ?";
        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement;
            statement = connection.prepareStatement(query);
            statement.setString(1, priceRange);
            ResultSet resultSet = statement.executeQuery();
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
                productList.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }
    public Products getProductsDetail(String id_Product) {
        Connection connection = JDBCConnector.getConnection();
        String query = "SELECT * FROM product where id_Product=?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, id_Product);
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
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return product;
    }

    public List<Products> getListProductsByPriceRange(String priceRange) {
        List<Products> productList = new ArrayList<>();
        String query = "SELECT * FROM product WHERE price BETWEEN 0 AND ?";
        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement;
            statement = connection.prepareStatement(query);
            statement.setString(1, priceRange);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Products product = new Products(
                return product;
            }
        } catch (SQLException e) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    public List<Products> getTopproduct() {
        List<Products> listProducts = new ArrayList<>();

        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement;
            String query = "SELECT * FROM product ORDER BY product_sold DESC LIMIT 5";
            statement = connection.prepareStatement(query);
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
                productList.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }
                listProducts.add(product);
            }

            return listProducts;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Products getProductById(String id_Product) {
        Products product = null;
        try {
            Connection connection = JDBCConnector.getConnection();
            String query = "SELECT * FROM product WHERE id_Product=?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, id_Product);

            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                product = new Products(
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
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return product;
    }
}
