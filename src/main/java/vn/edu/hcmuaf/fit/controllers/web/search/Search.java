
package vn.edu.hcmuaf.fit.controllers.web.search;

import vn.edu.hcmuaf.fit.dao.SearchDAO;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Search", value = "/Search")
public class Search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        if (search == null) {
            search = "";
        }
        SearchDAO dao = new SearchDAO();
        List<Products> listProduct = dao.searchByName(search);

        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("cuahang.jsp").forward(request, response);
    }
}
