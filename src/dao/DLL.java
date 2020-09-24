package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Event;

public class DLL {
	private static String query;
	private static Connection connection = ConnectionManager.getInstance().getConnection();

	public static List<Event> withdrawDate(String date) throws SQLException {
		query = "SELECT * FROM EVENTS WHERE date = '" + date + "'";
		List<Event> list = new ArrayList<>();
		try (Statement statement = connection.createStatement(); ResultSet rs = statement.executeQuery(query)) {
			while (rs.next())
				list.add(new Event(rs.getString("date"), rs.getString("name"), rs.getString("description"),
						rs.getInt("id")));
			return list;
		}
	}

	public static List<Event> withdrawName(String name) throws SQLException {
		query = "SELECT * FROM EVENTS WHERE name = '" + name + "'";
		List<Event> list = new ArrayList<>();
		try (Statement statement = connection.createStatement(); ResultSet rs = statement.executeQuery(query)) {
			while (rs.next())
				list.add(new Event(rs.getString("date"), rs.getString("name"), rs.getString("description"),
						rs.getInt("id")));
			return list;
		}
	}

	public static List<Event> withdrawMonth(String month) throws SQLException {
		query = "select * from events where date like '%"+month+"'";
		List<Event> list = new ArrayList<>();
		try(Statement statement = connection.createStatement(); ResultSet rs = statement.executeQuery(query)){
			while (rs.next())
				list.add(new Event(rs.getString("date"), rs.getString("name"), rs.getString("description"),
						rs.getInt("id")));
			return list;
			
		}
	}

	public static List<Event> withdrawWeek(String parameter) {
		return null;
	}
	
	
}