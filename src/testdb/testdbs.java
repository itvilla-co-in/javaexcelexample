package testdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet("/testdbs")
public class testdbs extends HttpServlet {
	private static final long serialVersionUID = 1L;
     public testdbs() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname="root";
		String pass="root";
		String url="jdbc:mysql://localhost:3306/hiber?useSSL=false&amp;serverTimezone=UTC";
		String driver="com.mysql.cj.jdbc.Driver";
		
		
		try {
			PrintWriter out = response.getWriter();
			System.out.println("Trying to connect now ");
			Class.forName(driver);
			Connection myconn = DriverManager.getConnection(url,uname,pass);
			out.println("Success !!");
			myconn.close();
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
			System.out.println("exception trace " + e);
		}
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
}
