package vn.edu.hcmuaf.fit.controllers.web.accounts;

import vn.edu.hcmuaf.fit.dao.CustomerDAO;
import vn.edu.hcmuaf.fit.entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class ServletLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try{
            String userName = request.getParameter("username"); // lấy dữ liệu về
            String password = request.getParameter("pass");

            CustomerDAO customerDAO = new CustomerDAO();
            Account account = customerDAO.checkLogin(userName, password);

            System.out.println(account);
            if (account == null) {
                request.setAttribute("mess", "Tài khoản hoặc mật khẩu không đúng.");
            request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
            } else {
            request.getRequestDispatcher("trangchu.jsp").forward(request, response);
            }
        } catch (Exception e){

        }
    }


}
