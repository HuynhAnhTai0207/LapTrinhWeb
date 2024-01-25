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
                        resultSet.getString("detail"),
                        resultSet.getString("newProduct")
                );
                setImageInProduct(product);
                listProducts.add(product);
            }

            return listProducts;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Products> getAllProduct() {
        List<Products> listProducts = new ArrayList<>();

        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement;
            String query = "SELECT * FROM product WHERE status = 1";
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
                        resultSet.getString("detail"),
                        resultSet.getString("newProduct")
                );
                setImageInProduct(product);
                listProducts.add(product);
            }
            return listProducts;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteProductById(String id) {
        Connection connection = JDBCConnector.getConnection();
        String sql = "UPDATE product\n" +
                "SET status = 0\n" +
                "WHERE id_Product=?;";
        PreparedStatement statement = null;
        if(connection != null) {
            try {
                statement = connection.prepareStatement(sql);
                statement.setString(1,id);
                statement.executeUpdate();
            } catch (SQLException e) {
            }
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

    public int insertProduct(String id, String name, int quantityInt, String isNew, String catalog, int primeCost, int price, String description ) {
        Connection connection = JDBCConnector.getConnection();
        String sql = "INSERT INTO product(id_Product, name, category, stock, price_buy, price, quantity, product_sold, detail, newProduct, status)\n" +
                "                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = null;
        if(connection != null) {
            try {
                statement = connection.prepareStatement(sql);
                statement.setString(1, id);
                statement.setString(2, name);
                statement.setString(3, catalog);
                statement.setString(4, "Còn hàng");
                statement.setInt(5, primeCost);
                statement.setInt(6, price);
                statement.setInt(7, quantityInt);
                statement.setInt(8, 0);
                statement.setString(9, description);
                statement.setString(10, isNew);
                statement.setInt(11, 1);
                return statement.executeUpdate();
            } catch (SQLException e) {
                return 0;
            }
        }
        return 0;

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
                        resultSet.getString("detail"),
                        resultSet.getString("newProduct")
                );
                setImageInProduct(product);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return product;
    }

    public List<Products> getTopproduct() {
        List<Products> listProducts = new ArrayList<>();

        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement;
            String query = "SELECT * FROM product ORDER BY product_sold DESC LIMIT 10";
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
                        resultSet.getString("detail"),
                        resultSet.getString("newProduct")
                );
                setImageInProduct(product);
                listProducts.add(product);
            }

            return listProducts;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Products> getListNewProducts(String newProduct) {
        List<Products> listProducts = new ArrayList<>();

        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement;
            if(newProduct==null){
                String query = "SELECT * FROM product";
                statement = connection.prepareStatement(query);
            }
            else {
                String query = "SELECT * FROM product where newProduct=?";
                System.out.println("abc");
                statement = connection.prepareStatement(query);
                statement.setString(1, newProduct);
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
                        resultSet.getString("detail"),
                        resultSet.getString("newProduct")
                );
                setImageInProduct(product);
                listProducts.add(product);
            }

            return listProducts;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Products> getListNewProducts1(String newProduct) {
        List<Products> listProducts = new ArrayList<>();

        try {
            Connection connection = JDBCConnector.getConnection();
            PreparedStatement statement;
            if(newProduct==null){
                String query = "SELECT * FROM product";
                statement = connection.prepareStatement(query);
            }
            else {
                String query = "SELECT * FROM product where newProduct=?";
                System.out.println("abc");
                statement = connection.prepareStatement(query);
                statement.setString(1, newProduct);
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
                        resultSet.getString("detail"),
                        resultSet.getString("newProduct")
                );
                setImageInProduct(product);
                listProducts.add(product);
            }

            return listProducts;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
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
                        resultSet.getString("id_Product"),
                        resultSet.getString("name"),
                        resultSet.getInt("price"),
                        resultSet.getString("category"),
                        resultSet.getString("stock"),
                        resultSet.getInt("price_buy"),
                        resultSet.getInt("quantity"),
                        resultSet.getInt("product_sold"),
                        resultSet.getString("detail"),
                        resultSet.getString("newProduct")
                );
                setImageInProduct(product);
                productList.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }


    public void UpdateProduct(String id, String name, int quantityInt, String isNew, String catalog, int primeCostInt, int priceInt, String description) {
        Connection connection = JDBCConnector.getConnection();
        String sql = "UPDATE product\n" +
                "SET\n" +
                "  name = ?, category = ?,price_buy = ?,price = ?,quantity = ?, detail = ?,newProduct = ?\n" +
                "WHERE\n" +
                "  id_Product = ?;";
        PreparedStatement statement = null;
        if(connection != null) {
            try {
                statement = connection.prepareStatement(sql);
                statement.setString(1, name);
                statement.setString(2, catalog);
                statement.setInt(3, primeCostInt);
                statement.setInt(4, priceInt);
                statement.setInt(5, quantityInt);
                statement.setString(6, description);
                statement.setString(7, isNew);
                statement.setString(8,id);
                statement.executeUpdate();
            } catch (SQLException e) {
            }
        }


    }
}
