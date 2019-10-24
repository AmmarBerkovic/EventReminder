package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DLL;
import model.Event;

/**
 * Servlet implementation class ListBy
 */
@WebServlet("/show")
public class ListBy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Event> list = new ArrayList<>();
		if (request.getParameter("by").equals("week")) {
			try {
				list = DLL.withdrawDate(request.getParameter("week"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (request.getParameter("by").equals("month")) {
			try {
				list = DLL.withdrawName(request.getParameter("month"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		request.getRequestDispatcher("Table.jsp").forward(request, response);
	}

}
