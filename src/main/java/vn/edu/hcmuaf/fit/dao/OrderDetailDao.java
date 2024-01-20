package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.entity.OrderDetail;
import vn.edu.hcmuaf.fit.entity.Orders;
import vn.edu.hcmuaf.fit.mapper.impl.OrderDetailMapper;

import java.util.List;

public class OrderDetailDao extends AbstractDAO<OrderDetail>{

    public Boolean save(OrderDetail orderDetail){
        String sql = "INSERT INTO `order_details` (order_id,product_id, quantity, total) VALUES(?,?,?,?)";


        return update(sql,orderDetail.getOrderId(),orderDetail.getProductId(),orderDetail.getQuantity(),orderDetail.getTotal());
    }
    public List<OrderDetail> findByOrderId(Long orderId){

        String sql = "SELECT * FROM order_details WHERE order_id = ?";
        return query(sql, new OrderDetailMapper(),orderId);
    }
}
