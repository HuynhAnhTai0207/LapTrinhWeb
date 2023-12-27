package vn.edu.hcmuaf.fit.controllers.web.products;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FilterByPriceController", value = "/FilterByPriceController")
public class FilterByPriceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String priceRange = request.getParameter("priceRange");
        if (priceRange == null) {
            priceRange = "";
        }
        try{
            Integer.parseInt(priceRange);
        }catch (NumberFormatException e){
            priceRange = "";
        }
        ProductDAO dao = new ProductDAO();
        List<Products> listProducts = dao.getListProductsByPriceRange(priceRange);

        System.out.println(listProducts.size());
        ProductDAO productDAO = new ProductDAO();
        List<Products> listTop = productDAO.getTopproduct();
        request.setAttribute("listTopProducts",listTop);
        request.setAttribute("endP",1);
        request.setAttribute("listProduct", listProducts);
        request.getRequestDispatcher("cuahang.jsp").forward(request, response);
    }
}
