package vn.edu.hcmuaf.fit.entity;

import java.util.ArrayList;
import java.util.List;

public class Products  implements  Comparable<Products>{
    private String id_Product;
    private String name;
    private int price;
    private String category;
    private String stock;
    private int price_buy;
    private int quantity;
    private int product_sold;
    private String detail;
    private List<String> images;


    public Products(String id_Product, String name, int price, String category, String stock, int price_buy, int quantity, int product_sold, String detail) {
        this.category = category;
        this.id_Product = id_Product;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.price_buy = price_buy;
        this.quantity = quantity;
        this.product_sold = product_sold;
        this.detail = detail;
        this.images = new ArrayList<>();
    }

    public Products() {

    }


    public String getCategory() {
        return this.category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getId_Product() {
        return this.id_Product;
    }

    public void setId_Product(String id) {
        this.id_Product = id_Product;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return this.price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public List<String> getImages() {
        return this.images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }

    public String getStock() {
        return this.stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public int getPrice_buy() {
        return this.price_buy;
    }

    public void setPrice_buy(int price_buy) {
        this.price_buy = price_buy;
    }

    public int getQuantity() {
        return this.quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getProduct_sold() {
        return this.product_sold;
    }

    public void setProduct_sold(int product_sold) {
        this.product_sold = product_sold;
    }

    public String getDetail() {
        return this.detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id_Product='" + id_Product + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", category=" + category +
                ", stock='" + stock + '\'' +
                ", price_buy=" + price_buy +
                ", quantity=" + quantity +
                ", product_sold=" + product_sold +
                ", detail='" + detail + '\'' +
                ", images=" + images +
                '}';
    }

    @Override
    public boolean equals(Object obj) {

        if(this == obj)
        {
            return true;
        }

        if(!(obj instanceof Products))
        {
            return false;
        }
        Products other = (Products) obj;

        if(other.getId_Product() == null)
        {
            return false;
        }
        return id_Product.equals(other.getId_Product());
    }

    @Override
    public int hashCode() {
        if(getId_Product() !=null)
        {
            return getId_Product().hashCode();
        }
        return super.hashCode();
    }

    @Override
    public int compareTo(Products sp) {
        return Integer.parseInt(this.id_Product) - Integer.parseInt(sp.id_Product);
    }
}
