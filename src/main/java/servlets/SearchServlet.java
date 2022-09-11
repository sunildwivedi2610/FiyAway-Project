package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Search;


public class SearchServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Search.date = req.getParameter("date");
		Search.source = req.getParameter("source");
		Search.destination = req.getParameter("destination");
		Search.persons = Integer.parseInt(req.getParameter("persons"));
		if(Search.date.equals("")) {
			PrintWriter out = resp.getWriter();
		}
		else {
			Search.day = getDay(Search.date);
			resp.sendRedirect("/FlyAway/search-result.jsp");
		}
	}

	private String getDay(String dateInp) {
		LocalDate dt = LocalDate.parse(dateInp);
		return dt.getDayOfWeek().toString();
	}
	
}
