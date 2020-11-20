package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DataBaseConnection;

public class LoginServlet extends HttpServlet{
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			String query = "SELECT * from usuario WHERE  usuario = ? AND password = ?";
			Connection con = DataBaseConnection.initializeDatabase(); 
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(0, username);
			ps.setString(1, password);
			ResultSet rs = ps.executeQuery();			
			if (rs.next()) {
				responder(response, "login ok");
            }
			else {
				responder(response, "login incorrecto");
			}
			
		}
		catch(SQLException e) {
		}
		catch(ClassNotFoundException e) {
		}
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	    String username=request.getParameter("username");
	    String password=request.getParameter("password");
	    
		String query = "SELECT * from usuario WHERE  usuario = ? AND password = ?";

	    Connection con = null; 
		PreparedStatement ps = null;
		ResultSet rs =  null; 
	    try {
	    	con = DataBaseConnection.initializeDatabase(); 
			ps = con.prepareStatement(query);
	    
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();			
			if (rs.next()) {
				response.sendRedirect(request.getContextPath() + "/Inicio.jsp");
				//RequestDispatcher requestDispatcher = (RequestDispatcher) request.getRequestDispatcher("/inicio.jsp");
	            //requestDispatcher.forward(request, response);
            }
			else {

	            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
	            requestDispatcher.forward(request, response);
			}
			
		}
		catch(SQLException e) {
				System.out.println(e.getMessage());
		}
		catch(ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
	}
	
	
	private void responder(HttpServletResponse resp, String msg)
			throws IOException {
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<t1>" + msg + "</t1>");
		out.println("</body>");
		out.println("</html>");
	}
    

}
