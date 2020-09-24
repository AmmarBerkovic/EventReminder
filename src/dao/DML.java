package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class DML {
	private static String query;
	private static Connection connection = ConnectionManager.getInstance().getConnection();
	
	public static void insert(String name,String date,String desc) throws SQLException {
		query="INSERT INTO events VALUES (default,'"+name+"','"+date+"','"+desc+"')";
		try (Statement statement = connection.createStatement();) {
			statement.executeUpdate(query);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
