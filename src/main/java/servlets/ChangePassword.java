package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChangePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String password = req.getParameter("password");
		if (!Login.isLoggedIn) {
			out.print("You must login first.");
		} else if (password.equals("")) {
			out.println("Password can't be empty.");
		} else if (Login.isLoggedIn && !password.equals("")) {
			Login.password = password;
			out.println("Password changed and your new Password is " + Login.password);
		} else {
			out.println("Something went wrong, please try again.");
		}
		out.close();
	}

}
