package vn.edu.hcmuaf.fit.controllers.web.order;

import vn.edu.hcmuaf.fit.entity.OrderDetail;
import vn.edu.hcmuaf.fit.entity.Orders;
import vn.edu.hcmuaf.fit.service.OrderServiceImpl;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderDetailController", value = "/chi-tiet-don-hang")
public class OrderDetailController extends HttpServlet {
    @Inject
    OrderServiceImpl orderService = new OrderServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orderIdStr = request.getParameter("orderId");
        Long orderId = Long.parseLong(orderIdStr);
        List<OrderDetail> listOrderDtail = orderService.findByOrderId(orderId);

        request.getSession().setAttribute("orderDetails",listOrderDtail);
        request.getRequestDispatcher("chitietdonhang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
