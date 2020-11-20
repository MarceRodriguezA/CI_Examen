package connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DataBaseConnection {
	public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
			
		String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql://localhost:3306/"; 
        String dbName = "clinica"; 
        String dbUsername = "root"; 
        String dbPassword = "doremi87"; 
	        
		Class.forName(dbDriver);
		
		Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername,  dbPassword);
		System.out.println("Conexion ok");                                        
		return con;
	}
}
