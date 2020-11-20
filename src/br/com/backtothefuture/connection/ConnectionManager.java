package br.com.backtothefuture.connection;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {

	private static ConnectionManager single;

	private ConnectionManager() throws FileNotFoundException, IOException {
	}

	public static ConnectionManager getInstance() throws FileNotFoundException, IOException {
		if (single == null) {
			single = new ConnectionManager();
		}

		return single;
	}

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String dbUrl = "<DBURL>";
		String dbUsr = "<USER>";
		String dbPwd = "<PASS>";

		Connection connection = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);

		return connection;
	}

}
