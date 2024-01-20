package vn.edu.hcmuaf.fit.mapper.impl;

import com.sun.org.apache.xpath.internal.operations.Or;
import vn.edu.hcmuaf.fit.entity.Orders;
import vn.edu.hcmuaf.fit.mapper.RowMapper;

import java.sql.ResultSet;

public class OrderMapper implements RowMapper<Orders> {

    @Override
    public Orders mapRow(ResultSet resultSet) {
        Orders order = null;
        try
        {
            order= new Orders();
            order.setId(resultSet.getLong("id"));
            order.setFullname(resultSet.getString("fullname"));
            order.setCustomerId(resultSet.getInt("customer_id"));
            order.setAddress(resultSet.getString("address"));
            order.setPhoneNumber(resultSet.getString("phone_number"));
            order.setTotal(resultSet.getDouble("total"));
            order.setNotes(resultSet.getString("notes"));
            order.setStatus(resultSet.getString("status"));
            order.setCreatedDate(resultSet.getDate("created_date"));
        }
        catch (Exception e)
        {
            System.out.println("Error when map order" +e.getMessage());
        }
        return order;
    }
}
