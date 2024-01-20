package vn.edu.hcmuaf.fit.controllers.web.Cart;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.entity.Account;
import vn.edu.hcmuaf.fit.entity.Cart;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartController", value = "/Cart")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = (Account) request.getSession().getAttribute("account");
        if (account == null) {
            request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
            return;
        }

        String id_Product = request.getParameter("id_Product");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if(cart == null)
        {
            cart = new Cart();
        }


        List<Products> listProducts  = new ArrayList<>();

        // Log the value of listProducts
//        System.out.println("List of Products in CartController: " + listProducts);
        if (id_Product != null) {
            ProductDAO productDAO = new ProductDAO();

            Products product = productDAO.getProductById(id_Product);

            // Kiểm tra nếu sản phẩm tồn tại
            if (product != null) {
                cart.addProductUpdate(product,1);
            }
//            }


        }
        request.getSession().setAttribute("cart", cart);
        request.setAttribute("listProducts", listProducts);
        request.getRequestDispatcher("giohang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        Account account = (Account) request.getSession().getAttribute("account");
        Cart cart = (Cart) request.getSession().getAttribute("cart");

        if (account == null) {
            request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
            return;
        }

        String id_Product = request.getParameter("id_Product");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
//        cart.addProductUpdate(id_Product, quantity);

        request.getRequestDispatcher("giohang.jsp").forward(request, response);
    }


}
