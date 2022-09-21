package com.simplilearn.admin;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;

import utill.JDBCUtil;

@WebServlet("/")

public class AdminController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	 public AdminController() {
	        super();
	    }
	 
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("************************START-doPost()**************************************");
			
			String path=request.getServletPath();
			System.out.println("Path "+path); // /insert
		
			switch(path) {
			case "/login":
				//isvalid(request,response);
				RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			break;
			case "/success":
				isvalid(request,response);
				//RequestDispatcher rd1 = request.getRequestDispatcher("success.jsp");
				//rd1.forward(request, response);
			break;
			case "/menu":
				//isvalid(request,response);
				RequestDispatcher rdd = request.getRequestDispatcher("menu.jsp");
  				rdd.forward(request, response);
  				break;
				
			case "/getStudent":
				//getStudents(request,response);
				RequestDispatcher rd1 = request.getRequestDispatcher("getStudent.jsp");
				rd1.forward(request, response);
			break;
			case "/getTeacher":
				//getStudents(request,response);
				RequestDispatcher rd2 = request.getRequestDispatcher("getTeacher.jsp");
				rd2.forward(request, response);
			break;
			case "/getSubject":
				//getStudents(request,response);
				RequestDispatcher rd3 = request.getRequestDispatcher("getSubject.jsp");
				rd3.forward(request, response);
			break;
			case "/getClass":
				
				RequestDispatcher rd4 = request.getRequestDispatcher("getClass.jsp");
				rd4.forward(request, response);
			break;
             case "/subclass":
            	 saveData(request,response);
				RequestDispatcher rd5 = request.getRequestDispatcher("subclass.jsp");
				rd5.forward(request, response);
			break;
             case "/subclasstea":
            	 saveDataTeacher(request,response);
				RequestDispatcher rd6 = request.getRequestDispatcher("subclasstea.jsp");
				rd6.forward(request, response);
			break;
			
			}
			
	 }

public static void isvalid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{ 
	try {
		Connection con ;
		con=JDBCUtil.getMySqlConnection();
		String subname = (String)request.getParameter("username");
		String subname1 = (String)request.getParameter("password");

          if(subname.equals("admin") && subname1.equals("simplilearn") )
        	 // t= true;
          {
        	  	RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
  				rd.forward(request, response);
  				//break;
  				
          }
          else
          {
				RequestDispatcher rd = request.getRequestDispatcher("menu1.jsp");
				rd.forward(request, response);
				
				}
		con.close();	
         
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}
	
}
public static void saveData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {    			//Class.forName("com.mysql.cj.jdbc.Driver"); // MySql Driver
	                Connection con ;//= DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root","root12345");	

				con=JDBCUtil.getMySqlConnection();
			//String s=" update Class set subject=? where teacher=? , section=?";
				String s="insert into Class(section,teacher,subject) values(?,?,?) ";
				String subname = (String)request.getParameter("classname");
				
			       String cla=(String)request.getParameter("subjectname");
					String teachername = (String)request.getParameter("teachername");

				PreparedStatement pstmt=con.prepareStatement(s);
				
				//pstmt.setInt(1,i);
				pstmt.setString(1, subname);
				pstmt.setString(2, teachername);
				pstmt.setString(3, cla);	
	       pstmt.execute();
	      
	       
	       pstmt.close();con.close();	
	           
	}
	catch (Exception e) 
	{
		e.printStackTrace();
	}}
	public static void saveDataTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {    			//Class.forName("com.mysql.cj.jdbc.Driver"); // MySql Driver
		                Connection con ;//= DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root","root12345");	

					con=JDBCUtil.getMySqlConnection();
			
					String subname = (String)request.getParameter("subjectname");
					
				       String cla=(String)request.getParameter("classname");
						String teachername = (String)request.getParameter("teachername");
						String s="update class set teacher=' "+ teachername+"' where (section='"+cla+"' and subject='"+subname+"') ";
System.out.println(s);
					Statement pstmt=con.createStatement();
					
					//pstmt.setInt(1,i);
				//	pstmt.setString(1, teachername);
					//pstmt.setString(2, cla);
					
					//pstmt.setString(3, subname);	
		       pstmt.executeUpdate(s);
		      
		       
		       pstmt.close();con.close();	
		           
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	

}}