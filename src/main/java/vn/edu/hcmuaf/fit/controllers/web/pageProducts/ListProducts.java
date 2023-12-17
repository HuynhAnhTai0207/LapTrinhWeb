package vn.edu.hcmuaf.fit.controllers.web.pageProducts;

import vn.edu.hcmuaf.fit.dao.PageDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ListProducts", value = "/ListProducts")
public class ListProducts extends HttpServlet {


    public ListProducts(int anInt) {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageDao dao = new PageDao();
//        int count = dao.getTotalProduct();
        int endPage = dao.getTotalProduct() / 10;
        if (dao.getTotalProduct() % 10 != 0) {
            endPage++;
        }
        request.setAttribute("endP", endPage);
        request.getRequestDispatcher("cuahang.jsp").forward(request, response);
    }
}
