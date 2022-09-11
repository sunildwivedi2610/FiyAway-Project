package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {
	public static boolean isLoggedIn = false;
	public static String password = "Admin";
	public static String email = "admin@faairline.com";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String email = req.getParameter("email");
		String pass = req.getParameter("password");

		if (email.equals(Login.email) && pass.equals(Login.password)) {
			isLoggedIn = true;
			out.println("Welcome to FlyAway...");
			resp.sendRedirect("/FlyAway/admin-home.jsp");
		} else {
			isLoggedIn = false;
			out.print("You have enterd wrong email or password.");
		}
		out.close();
	}

}
