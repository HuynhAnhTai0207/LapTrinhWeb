package vn.edu.hcmuaf.fit.controller.admin.products;


import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditProductController", value = "/admin-edit-san-pham")
public class EditProductController extends HttpServlet {
    ProductDAO dao = new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        System.out.println(id);
        Products product = dao.getProductById(id);
        System.out.println(product);
        request.setAttribute("ProductId", product);


        request.getRequestDispatcher("admin/form-edit-san-pham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        try {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String quantity = request.getParameter("quantity");
            String isNew = request.getParameter("isNew");
            String catalog = request.getParameter("catalog");
            String primeCost = request.getParameter("primeCost");
            String price = request.getParameter("price");
            String description = request.getParameter("description");

            int quantityInt = Integer.parseInt(quantity);
            int primeCostInt = Integer.parseInt(primeCost);
            int priceInt = Integer.parseInt(price);
            System.out.println(id);
            System.out.println(name);
            System.out.println(quantityInt);
            System.out.println(catalog);
            System.out.println(isNew);
            System.out.println(priceInt);
            System.out.println(primeCostInt);
            System.out.println(description);
            ProductDAO dao = new ProductDAO();

            dao.UpdateProduct(id,name,quantityInt,isNew,catalog,primeCostInt,priceInt,description);
            response.sendRedirect("/admin-table-product");
        }catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("/admin-add-san-pham?message=Vui long nhap thong tin can thiet&alert=warning");
        }



    }
}
