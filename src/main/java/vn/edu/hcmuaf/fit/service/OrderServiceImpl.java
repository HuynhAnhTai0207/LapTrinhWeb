package vn.edu.hcmuaf.fit.service;

import javafx.scene.layout.BorderRepeat;
import vn.edu.hcmuaf.fit.dao.OrderDao;
import vn.edu.hcmuaf.fit.dao.OrderDetailDao;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.entity.Cart;
import vn.edu.hcmuaf.fit.entity.OrderDetail;
import vn.edu.hcmuaf.fit.entity.Orders;
import vn.edu.hcmuaf.fit.entity.Products;
import vn.edu.hcmuaf.fit.mapper.impl.OrderDetailMapper;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;


public class OrderServiceImpl {
    @Inject
    private OrderDao orderDao = new OrderDao();
    @Inject
    ProductDAO productDAO = new ProductDAO();
    @Inject
    private OrderDetailDao orderDetailDao = new OrderDetailDao();
    public Orders saveOder(Orders order, Cart cart){
        order.setStatus("thành công"); // lưu order xuoonsgg để lấy order id vì ordeId là khóa ngoại của order detail
        order.setTotal(cart.getTotal());
        Long orderId = orderDao.save(order); // dùng lớp dao để lưu order về kqua trả về là orderID
        if (orderId== null){
            return null;
        }
        for(Map.Entry<Products,Integer> entry : cart.getCart().entrySet())
//duyệt qua cart lâ sp ra, tạo order detail
        {
            OrderDetail orderDetail = new OrderDetail();

            orderDetail.setOrderId(orderId);
            orderDetail.setProductId(entry.getKey().getId_Product());
            orderDetail.setQuantity(entry.getValue());
            orderDetail.setTotal(entry.getKey().getPrice()*entry.getValue());
            boolean isSaved = orderDetailDao.save(orderDetail); // lưu về order detail
            if(!isSaved){
                return null;
            }
        }




        return order;
    }
    public List<Orders> findByCustomerId(int id){
        return orderDao.findByCustomerId(id);
    }

    public List<OrderDetail> findByOrderId(Long orderId){

        List<OrderDetail> orderDetails = orderDetailDao.findByOrderId(orderId);
        for (OrderDetail o: orderDetails){
            Products products = productDAO.getProductById(o.getProductId());
            o.setProduct(products);
        }
        return orderDetails;
    }


}
