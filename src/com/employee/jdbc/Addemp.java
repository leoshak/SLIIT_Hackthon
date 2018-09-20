package com.employee.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 * Servlet implementation class Addemp
 */
@WebServlet("/Addemp")
public class Addemp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/product")
	private DataSource dataSource;

		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			PrintWriter out = response.getWriter();
			
			response.setContentType("text/plain");
			Connection myConne=null;
			Statement  myStmte = null;
			ResultSet myrs=null;
			
			String empFull=request.getParameter("empFull");
			String empNIC=request.getParameter("empNIC");
			String empEmail=request.getParameter("empEmail");
			String empDate=request.getParameter("empDate");
			String emptype=request.getParameter("emptype");
			
			String connectionURL = "jdbc:mysql://localhost:3306/product";
            Connection connection = null; 
			try {out.println("fff");

            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection(connectionURL, "root", "1234");
				//myConne=dataSource.getConnection();
				myStmte=connection.createStatement();
				String sqlQ = "INSERT INTO `employee` (`fullName`, `NICNO`, `email`, `DOB`, `type`) VALUES ('"+empFull+"', '"+empNIC+"', '"+empEmail+"', '"+empDate+"', '"+emptype+"')";
				myStmte.executeUpdate(sqlQ);
				response.sendRedirect("index.jsp");
				
			}
			catch (SQLException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
		}
   

}
