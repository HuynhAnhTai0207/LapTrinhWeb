package vn.edu.hcmuaf.fit.mapper.impl;

import vn.edu.hcmuaf.fit.entity.OrderDetail;
import vn.edu.hcmuaf.fit.entity.Orders;
import vn.edu.hcmuaf.fit.mapper.RowMapper;

import java.sql.ResultSet;

public class OrderDetailMapper implements RowMapper<OrderDetail> {
    @Override
    public OrderDetail mapRow(ResultSet resultSet) {
        OrderDetail orderDetail = null;
        try
        {
            orderDetail= new OrderDetail();
            orderDetail.setOrderId(resultSet.getLong("order_id"));
            orderDetail.setQuantity(resultSet.getInt("quantity"));
            orderDetail.setProductId(resultSet.getString("product_id"));
            orderDetail.setTotal(resultSet.getDouble("total"));

        }
        catch (Exception e)
        {
            System.out.println("Error when map order" +e.getMessage());
        }
        return orderDetail;
    }
    }

