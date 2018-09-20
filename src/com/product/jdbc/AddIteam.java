package com.product.jdbc;

import java.io.*;
import java.net.URL;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.net.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class AddIteam
 */
@WebServlet("/AddIteam")
public class AddIteam extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	public static void main(String[] args) throws Exception {
        URL aura = new URL("http://www.aura.lk/iot1");
        URLConnection item = aura.openConnection();
        BufferedReader in = new BufferedReader(
                                new InputStreamReader(
                                		item.getInputStream()));
        int columns =4;
        int rows = 100;
        String productid;
        String productname;
        String time;
        String lineid;
        HttpServletResponse response = null;
		response.addHeader("Refresh", "5");
        String inputLine[][]=new String[rows][columns];

        for(int i=0; i<100; i++)
        {
        	for(int j=0;j<4; j++)
        	{
        while ((inputLine[i][j] = in.readLine()) != null) 
        {
        	productid=inputLine[i][0];
        	productname=inputLine[i][1];
        	time=inputLine[i][2];
        	lineid=inputLine[i][3];
        	String sql="INSERT INTO `product`.`productitem` (`productId`, `productName`, `step`, `lineID`,`step1`) VALUES ('"+productid+"', '"+productname+"', '1', '"+lineid+"', '"+time+"');";
        	String connectionURL = "jdbc:mysql://localhost:3306/product";
     	   Connection connection = null;
        	
        		Statement  myStmt = null;
        		Class.forName("com.mysql.jdbc.Driver").newInstance();
        	 connection = (Connection) DriverManager.getConnection(connectionURL, "root", "1234");
        			myStmt =(Statement) connection.createStatement();
        			myStmt.executeQuery(sql);
        			connection.close();
        }
        	}
        }
        in.close();
        
        
        URL aura2 = new URL("http://www.aura.lk/iot2");
        URLConnection item2 = aura.openConnection();
        BufferedReader in2 = new BufferedReader(
                                new InputStreamReader(
                                		item2.getInputStream()));
        
        String productmanufacture;
        String time2;
        
        String inputLine2[][]=new String[rows][columns];

        for(int i=0; i<100; i++)
        {
        	for(int j=0;j<3; j++)
        	{
        while ((inputLine2[i][j] = in2.readLine()) != null) 
        {
        	productid=inputLine2[i][0];
        	productmanufacture=inputLine2[i][1];
        	time2=inputLine2[i][2];
        	String sql="UPDATE product SET manufactureDate='"+productmanufacture+"',step2="+time2+" WHERE id="+productid+"";
        	String connectionURL = "jdbc:mysql://localhost:3306/product";
     	   Connection connection = null;
        	
        		Statement  myStmt = null;
        		Class.forName("com.mysql.jdbc.Driver").newInstance();
        	 connection = (Connection) DriverManager.getConnection(connectionURL, "root", "1234");
        			myStmt =(Statement) connection.createStatement();
        			myStmt.executeQuery(sql);
        			connection.close();
        }
        	}
        }
        in.close();
        
        
        URL aura3 = new URL("http://www.aura.lk/iot3");
        URLConnection item3 = aura.openConnection();
        BufferedReader in3 = new BufferedReader(
                                new InputStreamReader(
                                		item3.getInputStream()));
        
        String productex;
        String time3;
        
        String inputLine3[][]=new String[rows][columns];

        for(int i=0; i<100; i++)
        {
        	for(int j=0;j<3; j++)
        	{
        while ((inputLine3[i][j] = in3.readLine()) != null) 
        {
        	productid=inputLine3[i][0];
        	productex=inputLine3[i][1];
        	time3=inputLine3[i][2];
        	String sql="UPDATE product SET expiryDate='"+productex+"',step3="+time3+" WHERE id="+productid+"";
        	String connectionURL = "jdbc:mysql://localhost:3306/product";
     	   Connection connection = null;
        	
        		Statement  myStmt = null;
        		Class.forName("com.mysql.jdbc.Driver").newInstance();
        	 connection = (Connection) DriverManager.getConnection(connectionURL, "root", "1234");
        			myStmt =(Statement) connection.createStatement();
        			myStmt.executeQuery(sql);
        			connection.close();
        }
        	}
        }
        in.close();
        
        
        URL aura4 = new URL("http://www.aura.lk/iot5");
        URLConnection item4 = aura.openConnection();
        BufferedReader in4= new BufferedReader(
                                new InputStreamReader(
                                		item4.getInputStream()));
        
        
        String time4;
        
        String inputLine4[][]=new String[rows][columns];

        for(int i=0; i<100; i++)
        {
        	for(int j=0;j<3; j++)
        	{
        while ((inputLine4[i][j] = in4.readLine()) != null) 
        {
        	productid=inputLine4[i][0];
        	time4=inputLine4[i][2];
        	String sql="UPDATE product SET step4="+time4+" WHERE id="+productid+"";
        	String connectionURL = "jdbc:mysql://localhost:3306/product";
     	   Connection connection = null;
        	
        		Statement  myStmt = null;
        		Class.forName("com.mysql.jdbc.Driver").newInstance();
        	 connection = (Connection) DriverManager.getConnection(connectionURL, "root", "1234");
        			myStmt =(Statement) connection.createStatement();
        			myStmt.executeQuery(sql);
        			connection.close();
        }
        	}
        }
        in.close();
        

        URL aura5 = new URL("http://www.aura.lk/iot5");
        URLConnection item5 = aura.openConnection();
        BufferedReader in5= new BufferedReader(
                                new InputStreamReader(
                                		item4.getInputStream()));
        
        
        String time5;
        
        String inputLine5[][]=new String[rows][columns];

        for(int i=0; i<100; i++)
        {
        	for(int j=0;j<3; j++)
        	{
        while ((inputLine5[i][j] = in5.readLine()) != null) 
        {
        	productid=inputLine5[i][0];
        	time5=inputLine5[i][2];
        	String sql="UPDATE product SET step5="+time5+" WHERE id="+productid+"";
        	String connectionURL = "jdbc:mysql://localhost:3306/product";
     	   Connection connection = null;
        	
        		Statement  myStmt = null;
        		Class.forName("com.mysql.jdbc.Driver").newInstance();
        	 connection = (Connection) DriverManager.getConnection(connectionURL, "root", "1234");
        			myStmt =(Statement) connection.createStatement();
        			myStmt.executeQuery(sql);
        			connection.close();
        }
        	}
        }
        in.close();
    }

}
