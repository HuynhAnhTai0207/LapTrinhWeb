package vn.edu.hcmuaf.fit.entity;

import java.util.HashMap;
import java.util.Map;

public class Cart
{
    private Map<Products, Integer> cart;

    public Cart(Map<Products, Integer> cart) {
        this.cart = cart;
    }

    public Cart() {
        this.cart = new HashMap<Products, Integer>();
    }

    public Map<Products, Integer> getCart() {
        return this.cart;
    }

    public void setCart(Map<Products, Integer> cart) {
        this.cart = cart;
    }

    public void addProductUpdate(Products product, int quantity) {
        if (product == null ) {
            throw new IllegalArgumentException("productId cannot be null or empty");
        }

        // Lấy thông tin sản phẩm từ cơ sở dữ liệu hoặc danh sách sản phẩm
        if (product != null) {
            // Kiểm tra xem sản phẩm đã có trong giỏ hàng hay chưa
            boolean isProductExists = this.cart.containsKey(product);

            if (isProductExists) {
                // Nếu sản phẩm đã có trong giỏ hàng, cập nhật số lượng
                int currentQuantity = this.cart.get(product);
                this.cart.put(product, currentQuantity + quantity);
            } else {
                // Nếu sản phẩm chưa có trong giỏ hàng, thêm mới vào giỏ hàng
                this.cart.put(product, quantity);
            }
        }
    }

    private Products getProductById(String productId) {
        // Thực hiện truy vấn cơ sở dữ liệu hoặc lấy từ danh sách sản phẩm
        // Trả về đối tượng Products hoặc null nếu không tìm thấy
        return null;
    }
    public double getTotal(){
        double total = 0;

        for (Map.Entry<Products,Integer> entry : getCart().entrySet()) {
            total= total+entry.getValue()*entry.getKey().getPrice();
        }
        return total;
    }


//    public void addProduct(String id, int quantity) {
//        this.cart.put(id, quantity);
//    }

//    public int getTotalSum() throws SQLException, ClassNotFoundException {
//        ProductDAO dao = new ProductDAO();
//        int sum = 0;
//        Set<String> list = this.cart.keySet();
//        for (String id : list) {
//            Products product = (Products) dao.getListProducts(id);
//            sum += product.getPrice_buy() * this.cart.get(id);
//        }
//        return sum;
//    }
}