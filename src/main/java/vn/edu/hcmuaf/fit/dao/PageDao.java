package vn.edu.hcmuaf.fit.dao;

import com.sun.org.apache.bcel.internal.generic.NEW;
import vn.edu.hcmuaf.fit.controllers.web.pageProducts.ListProducts;
import vn.edu.hcmuaf.fit.controllers.web.products.ListProductController;
import vn.edu.hcmuaf.fit.db.JDBCConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PageDao {

    Connection connection = null; // mở kết nối đến sql
    PreparedStatement statement = null; // ném câu lệnh sql đến navicat
    ResultSet resultSet = null;
    public int getTotalProduct(){
        String query = "SELECT * FROM product";
        try {
            Connection connection = JDBCConnector.getConnection();
            statement = connection.prepareStatement(query);
            resultSet = statement.executeQuery();
            while (resultSet.next()){
                return resultSet.getInt(1);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return 0;
    }
//    public List<ListProducts> paging(int index){
//        List<ListProducts> List = new ArrayList<>();
//        String query= "SELECT * FROM product\n" +
//                "ORDER BY id_Product\n" +
//                "OFFSET ? ROWS FETCH NEXT 20 ROWS ONLY;";
//        try {
//            Connection connection = JDBCConnector.getConnection();
//            statement = connection.prepareStatement(query);
//            statement.setInt(1, (index-1)*3);
//            resultSet = statement.executeQuery();
//            while (resultSet.next()){
//                List.add(new ListProducts(resultSet.getInt(1),
//                        resultSet.getInt(2),
//                        resultSet.getInt(3),
//                        resultSet.getInt(4),
//                        resultSet.getInt(5)));
//            }
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//
//        return List;
//    }
//    public static void main(String[] args) {
//        PageDao dao = new PageDao();
//        int cont = dao.getTotalProduct();
//        System.out.println(cont);
//    }

}
