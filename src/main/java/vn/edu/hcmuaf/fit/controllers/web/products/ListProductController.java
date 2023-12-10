package vn.edu.hcmuaf.fit.controllers.web.products;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ListProductController", value = "/ListProduct")
public class ListProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");

        ProductDAO dao = new ProductDAO();
        List<Products> listProducts = dao.getListProducts(category);

        System.out.println(listProducts.size());

        request.setAttribute("listProduct", listProducts);
        request.getRequestDispatcher("cuahang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
