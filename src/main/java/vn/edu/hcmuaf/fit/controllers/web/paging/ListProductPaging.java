package vn.edu.hcmuaf.fit.controllers.web.paging;

import vn.edu.hcmuaf.fit.controllers.web.pageProducts.ListProducts;
import vn.edu.hcmuaf.fit.controllers.web.products.ListProductController;
import vn.edu.hcmuaf.fit.dao.PageDao;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

    @WebServlet(name = "ListProductPaging", value = "/ListProductPaging")
public class ListProductPaging extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String indexPage = request.getParameter("index");
        if(indexPage==null){
            indexPage="1";
        }
        int index = Integer.parseInt(indexPage);
        PageDao pageDao= new PageDao();
        int count = pageDao.getTotalProduct();
        int endPage= count/20;
        if(count%20!=0){
            endPage++;
        }
        List<Products> list = pageDao.paging(index);
        System.out.println(list.size());
        request.setAttribute("ListA",list);
        request.setAttribute("endP",endPage);
        request.getRequestDispatcher("cuahang.jsp").forward(request, response);
    }


}
