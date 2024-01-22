package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.entity.Orders;
import vn.edu.hcmuaf.fit.mapper.impl.OrderMapper;

import java.util.List;

public class OrderDao extends AbstractDAO<Orders>{
    public Long save(Orders order){
        String sql = "INSERT INTO `order` (`fullname`,`customer_id`,`address`,`phone_number`,`status`,`total`,`notes`) VALUES(?,?,?,?,?,?,?);";
        return insert(sql,order.getFullname(),order.getCustomerId(),order.getAddress(),order.getPhoneNumber(),order.getStatus(),order.getTotal(),order.getNotes());
    }

    public List<Orders> findByCustomerId(int id){
        String sql = "SELECT * FROM `order` where customer_id = ?";
        return query(sql,new OrderMapper(),id);
    }

}
