package vn.edu.hcmuaf.fit.controllers.web.accounts;

import java.io.IOException;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet(name= "NewPasswordControlller", value ="/newPassword")
public class NewPasswordControlller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try{
			HttpSession session = request.getSession();
			String newPassword = request.getParameter("password");
			String confPassword = request.getParameter("confPassword");
			RequestDispatcher dispatcher = null;
			// Mã hóa mật khẩu trước khi kiểm tra tài khoản
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(newPassword.getBytes());
			byte[] digest = md.digest();
			String hashedPassword = DatatypeConverter.printHexBinary(digest).toUpperCase();


			if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_baker", "root",
							"");
					PreparedStatement pst = con.prepareStatement("UPDATE customer SET password = ? WHERE email = ?");
					pst.setString(1, hashedPassword);
					pst.setString(2, (String) session.getAttribute("email"));

					int rowCount = pst.executeUpdate();
					if (rowCount > 0) {
						request.setAttribute("status", "resetSuccess");
						dispatcher = request.getRequestDispatcher("dangnhap.jsp");
					} else {
						request.setAttribute("status", "resetFailed");
						dispatcher = request.getRequestDispatcher("dangnhap.jsp");
					}
					dispatcher.forward(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}

	}

}
