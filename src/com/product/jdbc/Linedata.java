package com.product.jdbc;

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

@WebServlet("/Linedata")
public class Linedata extends HttpServlet 
{
private static final long serialVersionUID=1L;
@Resource(name="jdbc/product")
private DataSource dataSource;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/plain");
		Connection myConne=null;
		Statement  myStmte = null;
		ResultSet myrs=null;
		String lineNO=request.getParameter("lineNO");
		String manager=request.getParameter("manager");
		String helper1=request.getParameter("helper1");
		String helper2=request.getParameter("helper2");
		String helper3=request.getParameter("helper3");
		String helper4=request.getParameter("helper4");
		String helper5=request.getParameter("helper5");
		PrintWriter out = response.getWriter();
		String connectionURL = "jdbc:mysql://localhost:3306/product";
        Connection connection = null; 
		try {
			out.println("fff");
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        connection = DriverManager.getConnection(connectionURL, "root", "1234");
			//myConne=dataSource.getConnection();
			myStmte=connection.createStatement();
			String sqlQ = " INSERT INTO `product`.`line1` (`managerid`, `helper1`, `helper2`, `helper3`, `helper4`, `helper5`) VALUES ('"+manager+"', '"+helper1+"', '"+helper2+"', '"+helper3+"', '"+helper4+"', '"+helper5+"');" ; 
					out.println(sqlQ);
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
