package servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Test;
import org.junit.runner.RunWith;

import servlet.LoginServlet;

@RunWith(MockitoJUnitRunner.class)
public class LoginTest {
	
	@Test
	public void loginTest() {
		
		LoginServlet servlet =  new LoginServlet();
		
		HttpServletRequest request = null;
		HttpServletResponse response = null;
		
		request.setAttribute("username","dave");
		request.setAttribute("password", "123");
		
		servlet.doGet(request, response);
		
	
	}
	

}	
