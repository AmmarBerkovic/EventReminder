package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DML;


@WebServlet("/join")
public class AddEv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String date=merge(request.getParameter("day"),converter(request.getParameter("month")));
		try {
			DML.insert(request.getParameter("event"), date, request.getParameter("desc"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("Home.jsp").forward(request, response);
		
	}
	
	public static String merge(String day,String month) {
		return day+"/"+month;
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
