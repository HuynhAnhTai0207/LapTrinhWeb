package vn.edu.hcmuaf.fit.controllers.web.Cart;

import vn.edu.hcmuaf.fit.entity.Cart;
import vn.edu.hcmuaf.fit.entity.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveCart", value = "/RemoveCart")
public class RemoveCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");
        // Kiểm tra xem productId có giá trị không
        if (productId != null && !productId.isEmpty()) {
            // Lấy giỏ hàng từ session
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            Products product = cart.getProductById(productId);

            // Kiểm tra xem sản phẩm có tồn tại trong giỏ hàng không
            if (product != null) {
                // Loại bỏ sản phẩm khỏi giỏ hàng
                System.out.println(cart.removeProduct(product.getId_Product()));
                // Cập nhật giỏ hàng trong sessiona
                session.setAttribute("cart", cart);
            }
        }
        response.sendRedirect(request.getContextPath()+"/Cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
