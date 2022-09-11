package entity;

import javax.servlet.annotation.WebServlet;

public abstract class Search {
	public static String date;
	public static String day;
	public static String source;
	public static String destination;
	public static int persons;
	
	public static String getQuery() {
		return "SELECT * FROM flights_list WHERE source='"+source
				+"' AND destination='"+destination+"' AND days like '%"+day+"%'";
		
	}
}
