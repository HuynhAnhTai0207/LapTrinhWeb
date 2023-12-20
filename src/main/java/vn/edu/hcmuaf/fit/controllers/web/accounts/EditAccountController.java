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


        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phone = request.getParameter("telephone");
        String fullname = request.getParameter("fullname");

        try {
            CustomerDAO customerDAO = new CustomerDAO();
            Account updatedAccount = customerDAO.updateAccount(firstname, lastname, fullname,phone,email);
            Account account = (Account) request.getSession().getAttribute("account");
            account.setFirstName(firstname);
            account.setLastName(lastname);
            account.setEmail(email);
            account.setPhone(Integer.parseInt(phone));
            account.setFullName(fullname);

            if (updatedAccount != null) {
                HttpSession session = request.getSession();
                session.setAttribute("account", account);

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
