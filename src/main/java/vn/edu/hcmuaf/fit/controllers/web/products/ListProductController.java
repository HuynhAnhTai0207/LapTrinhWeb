package vn.edu.hcmuaf.fit.controllers.web.products;

import vn.edu.hcmuaf.fit.dao.PageDao;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ListProductController", value = "/ListProduct")
public class ListProductController extends HttpServlet {
    @Inject
    PageDao pageDao = new PageDao();
    @Inject
    ProductDAO dao = new ProductDAO();
    @Inject
    ProductDAO productDAO= new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String indexPage = request.getParameter("index");

        String category = request.getParameter("category");


        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
//
//        List<Products> listProducts = pageDao.paging(index);
        List<Products> listProducts = new ArrayList<>();
        int endPage = 0;
        if (category != null) {
            listProducts = dao.getListProducts(category);
            int count = listProducts.size();
            endPage = count / 20;
            if (count % 20 != 0) {
                endPage++;
            }
            int endList = count> (index * 20)? (index*20):count;
            listProducts = listProducts.subList((index-1) * 20,endList);

        } else {
            listProducts = pageDao.paging(index);
            int count = pageDao.getTotalProduct();
            endPage = count / 20;
            if (count % 20 != 0) {
                endPage++;
            }
        }
//        System.out.println(listProducts.size());

        request.setAttribute("listProduct", listProducts);
        request.setAttribute("endP", endPage);
        request.getRequestDispatcher("cuahang.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("cuahang.jsp").forward(request, response);
    }

}
