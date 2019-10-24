package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
		private static ConnectionManager instance = null;
		private static final String USERNAME = "root";
		private static final String PASSWORD = "Password123!";
		private static final String CONN_STRING = "jdbc:mysql://localhost/events?useSSL=false&serverTimezone=UTC";
		// connection object
		private Connection connection = null;

		// privatni konstruktor - klasa moze biti instancirana samo unutar sebe
		private ConnectionManager() {

		}

		// provjeriti da li je instanca null, instancirati i vratiti ili samo vratiti
		public static ConnectionManager getInstance() {
			if (instance == null) {
				instance = new ConnectionManager();
			}
			return instance;
		}

		private boolean openConnection()  {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
				return true;
			} catch (Exception e) {
				System.err.println(e);
				return false;
			}
		}

		public Connection getConnection() {
			if (connection == null) {
				if (openConnection()) {
					return connection;
				} else {
					return null;
				}
			}
			return connection;
		}

		public void close() {
			try {
				System.out.println("Connection closed");
				connection.close();
				connection = null;
			} catch (Exception e) {
			}
		}
}
