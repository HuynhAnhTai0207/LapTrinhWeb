package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.mapper.RowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AbstractDAO<T> {
    public static Connection getConnection(){
        String dbURL =  "jdbc:mysql://localhost:3306/cake_baker";
        String username = "root";
        String password = "";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(dbURL, username, password);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
        List<T> rs =new ArrayList<>();
        Connection connection =null;
        PreparedStatement statement =null;
        ResultSet resultSet=null;
        try {
            connection=getConnection();
            statement=connection.prepareStatement(sql);
            setParameter(statement,parameters);
            resultSet= statement.executeQuery();
            System.out.println();
            while(resultSet.next()){
                rs.add(rowMapper.mapRow(resultSet));
            }
            return rs;
        } catch (Exception e) {
            System.out.println("loi roi "+e.getMessage());
            return null;
        }finally {
            try{
                if(connection!=null){
                    connection.close();
                }
                if(statement!=null){
                    statement.close();
                }
                if(resultSet!=null){
                    resultSet.close();
                }
            }catch (Exception e){
                System.out.println("loi roi "+e.getMessage());
                return null;
            }
        }

    }

    public boolean update(String sql, Object... parameters) {
        Connection connection =null;
        PreparedStatement statement=null;
        try{
            connection=getConnection();
            connection.setAutoCommit(false);
            statement= connection.prepareStatement(sql);
            setParameter(statement,parameters);
            statement.executeUpdate();
            connection.commit();
            return true;
        }catch (Exception e){
            System.out.println("loi roi "+e.getMessage());
            try{
                connection.rollback();
            }catch (Exception e1){
                System.out.println("Error when update : "+e1.getMessage());
            }
        }finally {
            try{
                if(connection!=null){
                    connection.close();
                }
                if(statement!=null){
                    statement.close();
                }
            }catch (Exception e2){
                System.out.println("Error when close connect : "+e2.getMessage());
            }
        }
        return false;
    }

    public Long insert(String sql, Object... parameters) {
        Connection connection =null;
        PreparedStatement statement=null;
        try{
            connection=getConnection();
            connection.setAutoCommit(false);// không tự động lưu về db, cho tới khi commit
            statement= connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS); // thuwcj hiện query, Statement.RETURN_GENERATED_KEYS trả về id của record mới tạo
            setParameter(statement,parameters);
            statement.executeUpdate();
            connection.commit(); // dòng commit
            Long id = null;
            ResultSet resultSet =statement.getGeneratedKeys(); // lấy id ra
            if(resultSet.next())
            {
                id = resultSet.getLong(1);
            }
            return id;
        }catch (Exception e){
            System.out.println("Error when  "+e.getMessage());
            try{
                connection.rollback(); // nếu lỗi trả về db ban đầu
            }catch (Exception e1){
                System.out.println("Error when update : "+e1.getMessage());
            }
        }finally { // sau khi thực hiện đống kết nối
            try{
                if(connection!=null){
                    connection.close();
                }
                if(statement!=null){
                    statement.close();
                }
            }catch (Exception e2){
                System.out.println("Error when close connect : "+e2.getMessage());
            }
        }
        return null;
    }
    private void setParameter(PreparedStatement statement,Object... parameters){ //ktra kiểu dlieu set vào statement
        try {
            for(int i=0;i<parameters.length;i++){
                Object parameter=parameters[i];
                int index=i+1;
                if(parameter instanceof Long ){
                    statement.setLong(index, (Long) parameter);
                }else
                if(parameter instanceof Integer ){
                    statement.setInt(index, (Integer) parameter);
                }else
                if(parameter instanceof String ){
                    statement.setString(index, (String) parameter);
                }else
                if(parameter instanceof Boolean ){
                    statement.setBoolean(index, (Boolean) parameter);
                }
                else
                if(parameter instanceof Double ){
                    statement.setDouble(index, (Double) parameter);
                }
            }
        } catch (Exception e) {
            System.out.println("Error when set parameter : "+e.getMessage());
        }
    }


}
