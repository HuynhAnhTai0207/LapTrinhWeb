package vn.edu.hcmuaf.fit.controllers.web.accounts;

import org.mindrot.jbcrypt.BCrypt;
import sun.misc.BASE64Decoder;
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
import java.util.Base64;

@WebServlet(name = "login", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("pass");

            // Mã hóa mật khẩu trước khi kiểm tra tài khoản
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] digest = md.digest();
            String hashedPassword = DatatypeConverter.printHexBinary(digest).toUpperCase();

            CustomerDAO customerDAO = new CustomerDAO();
            Account account = customerDAO.checkLogin(email, hashedPassword);

            if (account == null) {
                // Cập nhật mật khẩu mới trong trường hợp tài khoản không tồn tại
//                customerDAO.updatePassword(email, hashedPassword);

                request.setAttribute("mess", "Tài khoản hoặc mật khẩu không đúng.");
                request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
            }else
                if ("admin".equals(account.getRole())) {
                    HttpSession session = request.getSession();
                    session.setAttribute("admin", account);
                    response.sendRedirect("admin-home");
                } else if ("user".equals(account.getRole())) {
                    HttpSession session = request.getSession();
                    session.setAttribute("account", account);
                    request.getRequestDispatcher("trangchu.jsp").forward(request, response);
                } else {

                    request.setAttribute("mess", "Tài khoản đã bị khóa, vui lòng liên hệ admin để được giải quyết");
                    request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
                }

        } catch (IOException | NoSuchAlgorithmException e) {

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


}
