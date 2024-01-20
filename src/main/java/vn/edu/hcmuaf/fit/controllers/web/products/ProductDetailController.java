package vn.edu.hcmuaf.fit.controllers.web.products;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductDetailController", value = "/ProductDetailController")
public class ProductDetailController extends HttpServlet {
    public ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        productDAO = new ProductDAO();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("id_Product");
        if(productId == null)
        {

        }
        Products product = productDAO.getProductsDetail(productId);
//        System.out.println(product.toString());
        request.setAttribute("product",product);
        request.getRequestDispatcher("chitietsanpham.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
