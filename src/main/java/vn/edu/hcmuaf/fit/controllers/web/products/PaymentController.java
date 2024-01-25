package vn.edu.hcmuaf.fit.controllers.web.products;

import vn.edu.hcmuaf.fit.entity.Account;
import vn.edu.hcmuaf.fit.entity.Cart;
import vn.edu.hcmuaf.fit.entity.Orders;
import vn.edu.hcmuaf.fit.service.OrderServiceImpl;
import vn.edu.hcmuaf.fit.util.FormUtil;


import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PaymentController", value = "/ThanhToan")
public class PaymentController extends HttpServlet {
    @Inject
    private OrderServiceImpl orderService= new OrderServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        request.getSession().setAttribute("cart", cart);
        request.getRequestDispatcher("thanhtoan.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Orders orderForm = FormUtil.toModel(Orders.class,request);// chuyển requet thành model
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        Account account = (Account) request.getSession().getAttribute("account");
        orderForm.setCustomerId(account.getIdUser()); //set user id zo order
        System.out.println(account.getFullName());
        Orders order = orderService.saveOder(orderForm,cart); //gọi về lớp service lưu order về
        if(order!=null){
            cart = new Cart();
            request.getSession().setAttribute("cart", cart);
            request.getRequestDispatcher("thanhtoanthanhcong.jsp").forward(request, response);
        }else { // lưu xuống không thành công
            System.out.println("Thanh toan that bai");
            request.getRequestDispatcher("thanhtoanthatbai.jsp").forward(request, response);
        }

    }
}
