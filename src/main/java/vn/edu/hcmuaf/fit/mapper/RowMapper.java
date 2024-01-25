package vn.edu.hcmuaf.fit.mapper;

import java.sql.ResultSet;

public interface RowMapper<T> { // map những record dưới db thanh oject tương ứng
    T mapRow(ResultSet resultSet);
}