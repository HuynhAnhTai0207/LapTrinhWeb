package vn.edu.hcmuaf.fit.controller.admin.products;

import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProduct", value = "/admin-delete-san-pham")
public class DeleteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("đã xóa sản phẩm");
        ProductDAO dao = new ProductDAO();
        dao.deleteProductById(request.getParameter("id"));
//        System.out.println(request.getParameter("id"));
        response.sendRedirect("/admin-table-product");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
