package vn.edu.hcmuaf.fit.controllers.web.order;

import vn.edu.hcmuaf.fit.dao.OrderDao;
import vn.edu.hcmuaf.fit.dao.OrderDetailDao;
import vn.edu.hcmuaf.fit.entity.Account;
import vn.edu.hcmuaf.fit.entity.Orders;
import vn.edu.hcmuaf.fit.service.OrderServiceImpl;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderController", value = "/lich-su-don-hang")
public class OrderController extends HttpServlet {
    @Inject
    OrderServiceImpl orderService = new OrderServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = (Account) request.getSession().getAttribute("account");
        List<Orders> listOrder = orderService.findByCustomerId(account.getIdUser());
        System.out.println(listOrder.get(0).getFullname());
        request.getSession().setAttribute("orders",listOrder);
        request.getRequestDispatcher("lichsudonhang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
