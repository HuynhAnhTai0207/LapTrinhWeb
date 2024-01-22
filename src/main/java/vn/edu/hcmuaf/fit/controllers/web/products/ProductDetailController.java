package vn.edu.hcmuaf.fit.controllers.web.products;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.db.JDBCConnector;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "ProductDetailController", value = "/ProductDetailController")
public class ProductDetailController extends HttpServlet {

    @Inject
    ProductDAO productDAO = new ProductDAO();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String productId = request.getParameter("productId");
        if(productId == null)
        {

        }

        Products product = productDAO.getProductById(productId);
        request.setAttribute("product", product);
        request.getRequestDispatcher("chitietsanpham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
