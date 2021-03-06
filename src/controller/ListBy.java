package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DLL;
import model.Event;

@WebServlet("/show")
public class ListBy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Event> list = new ArrayList<>();
		if (request.getParameter("by").equals("week")) {
			try {
				list = DLL.withdrawDate(request.getParameter("week"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (request.getParameter("by").equals("month")) {
			String param = converter(request.getParameter("month"));
			try {
				list = DLL.withdrawMonth(param);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		request.getRequestDispatcher("Table.jsp").forward(request, response);
	}
	
	public static String converter (String str) {
		switch (str) {
		case "Januar":
			str = "01";
			break;
		case "Februar":
			str = "02";
			break;
		case "Mart":
			str = "03";
			break;
		case "April":
			str = "04";
			break;
		case "Maj":
			str = "05";
			break;
		case "Juni":
			str = "06";
			break;
		case "Juli":
			str = "07";
			break;
		case "August":
			str = "08";
			break;
		case "Septembar":
			str = "09";
			break;
		case "Oktobar":
			str = "10";
			break;
		case "Novembar":
			str = "11";
			break;
		case "Decembar":
			str = "12";
			break;
		}
		return str;
	}

}
