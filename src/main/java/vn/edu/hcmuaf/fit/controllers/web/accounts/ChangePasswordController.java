package vn.edu.hcmuaf.fit.controllers.web.accounts;

import vn.edu.hcmuaf.fit.dao.CustomerDAO;
import vn.edu.hcmuaf.fit.entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePasswordController", value = "/ChangePasswordController")
public class ChangePasswordController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        Account account = (Account)request.getSession().getAttribute("account");
        if(account == null){
            response.sendRedirect("dangnhap.jsp");
            return;
        }
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirm_password");




    }
}
