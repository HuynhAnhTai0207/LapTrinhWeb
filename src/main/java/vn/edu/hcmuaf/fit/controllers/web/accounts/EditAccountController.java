package vn.edu.hcmuaf.fit.controllers.web.accounts;

import vn.edu.hcmuaf.fit.dao.CustomerDAO;
import vn.edu.hcmuaf.fit.entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditAccountController", value = "/editAccount")
public class EditAccountController extends HttpServlet {
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
            String fullname = firstname + " " + lastname;

            CustomerDAO customerDAO = new CustomerDAO();
            Account updatedAccount = customerDAO.updateAccount(firstname, lastname, email, phone, fullname);

            if (updatedAccount != null) {
                // Nếu cập nhật thành công, cập nhật session và chuyển hướng về trang MyAccount.jsp
                request.getSession().setAttribute("account", updatedAccount);
                request.setAttribute("mess", "Đã cập nhật thông tin");
                request.getRequestDispatcher("trangchu.jsp").forward(request, response);
            } else {
                // Nếu không cập nhật được
                request.setAttribute("mess", "Không thể cập nhật thông tin");
                request.getRequestDispatcher("trangchu.jsp").forward(request, response);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
