package vn.edu.hcmuaf.fit.controllers.web.accounts;

import vn.edu.hcmuaf.fit.dao.CustomerDAO;
import vn.edu.hcmuaf.fit.entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.xml.bind.DatatypeConverter;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

@WebServlet(name = "ChangePasswordController", value = "/changePassword")
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
//        System.out.println(oldPassword);
//        System.out.println(newPassword);
//        System.out.println(confirmPassword);

        // Mã hóa mật khẩu trước khi kiểm tra tài khoản
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
        md.update(oldPassword.getBytes());
        byte[] digest = md.digest();
        String hashedPassword = DatatypeConverter.printHexBinary(digest).toUpperCase();

        CustomerDAO customerDAO = new CustomerDAO();
//        System.out.println(account.getPassword());



        if(account.getPassword().equals(hashedPassword))
        {
            if(newPassword.equals(confirmPassword)) {
                // Cập nhật mật khẩu trong cơ sở dữ liệu
                md.update(newPassword.getBytes());
                byte[] digest1 = md.digest();
                String updatePassword = DatatypeConverter.printHexBinary(digest1).toUpperCase();
//                account.setPassword(updatePassword);

                customerDAO.changePassword(account.getEmail(), oldPassword, updatePassword);
                request.setAttribute("mess", "Đổi mật khẩu thành công");
                request.getRequestDispatcher("dangnhap.jsp").forward(request, response);

            } else
            {
                request.setAttribute("mess", "Mật khẩu không trùng khớp");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            }
        } else
        {
            request.setAttribute("mess", "Mật khẩu sai");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
        }

    }
}
