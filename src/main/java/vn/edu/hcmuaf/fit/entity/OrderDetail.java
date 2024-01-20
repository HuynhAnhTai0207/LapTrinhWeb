package vn.edu.hcmuaf.fit.entity;

public class OrderDetail {
    private Long orderId;

    private String productId;
    private int quantity;
    private double total;
    private Products product;

    public Long getOrderId() {
        return orderId;
    }

    public OrderDetail(Long orderId, String productId, int quantity, double total) {
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.total = total;
    }

    public OrderDetail(){

    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public void setOrderId(Long id) {
        this.orderId = id;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }


}
