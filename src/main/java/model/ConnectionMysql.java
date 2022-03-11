package model;

import java.sql.*;

public class ConnectionMysql {

	private String user = "root";
	private String password = "Math@2109";
	
	public Connection conectionDB() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost/dbVagasEmprego?useTimezone=true&serverTimezone=UTC";
		java.sql.Connection conection = DriverManager.getConnection(url, this.user, this.password);
		
		return conection;
	}	
}
