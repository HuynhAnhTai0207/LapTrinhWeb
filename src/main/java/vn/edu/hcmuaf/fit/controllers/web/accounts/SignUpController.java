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

@WebServlet(name = "SignUpController", value = "/signup")
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try {
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String phone = request.getParameter("telephone");
            String password = request.getParameter("password");
            String verifyPassword = request.getParameter("confirm_password");
            String fullname = request.getParameter("firstname") + request.getParameter("lastname");
//            System.out.println("firstname: " + firstname);
//            System.out.println("lastname: " + lastname);
//            System.out.println("fullname" +fullname);
//            System.out.println("email: " + email);
//            System.out.println("phone: " + phone);
//            System.out.println("password: " + password);
//            System.out.println("verifyPassword: " + verifyPassword);

            // Mã hóa mật khẩu trước khi kiểm tra tài khoản
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] digest = md.digest();
            String hashedPassword = DatatypeConverter.printHexBinary(digest).toUpperCase();

            // Kiểm tra xem có trường nào chưa được điền không
            if (firstname.isEmpty() || lastname.isEmpty() || email.isEmpty() || phone.isEmpty() || password.isEmpty() || verifyPassword.isEmpty()) {
//                System.out.println("kiểm tra có cái nào trống không");
                request.setAttribute("mess", "Vui lòng nhập đầy đủ thông tin");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
            }

            // Kiểm tra xem mật khẩu có trùng khớp không
            if (!password.equals(verifyPassword)) {
                request.setAttribute("mess", "Mật khẩu không trùng khớp! Vui lòng nhập lại");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
            }
            // Kiểm tra mạt khẩu không đủ 6 kí tự chữ in hoa và kí tự đặc biệt
//
            if (password.length() <= 6 ) {
                request.setAttribute("mess", "Mật khẩu phải có độ dài lớn hơn 6 ");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
            }

//            System.out.println("kiểm tra email");
                CustomerDAO customerDAO = new CustomerDAO();
                Account account = customerDAO.checkAccountExit(email);
//            System.out.println("Account: " + account);

                // Kiểm tra xem email đã tồn tại chưa
                if (account != null) {
                    request.setAttribute("mess", "Email đã tồn tại");
                    request.getRequestDispatcher("dangky.jsp").forward(request, response);
                } else {
                    // Thực hiện đăng ký
                    Account account1 = customerDAO.signup(firstname, lastname, email, password, Integer.parseInt(phone));

                    // Chuyển hướng đến trang đăng nhập sau khi đăng ký thành công
//                    System.out.println("đăng ký thành công");
                    request.setAttribute("mess", "Đăng ký thành công");
                    request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
                }
        } catch (IOException e) {
            // Xử lý các lỗi khác
            e.printStackTrace(); // Cân nhắc ghi log cho lỗi
            request.setAttribute("mess", "Đã xảy ra lỗi khi đăng ký");
            request.getRequestDispatcher("dangky.jsp").forward(request, response);

        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

}
