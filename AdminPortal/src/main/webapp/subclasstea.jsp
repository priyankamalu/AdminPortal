
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
 <%@page import="utill.JDBCUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>List of class with teacher and subject </h2>
<table border="1">
	<tr>
	
	<th>Class</th>
	<th>Teacher_name</th>
	<th>Subject</th>
	
	</tr>	
	<% try {    			Class.forName("com.mysql.cj.jdbc.Driver"); // MySql Driver
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root","root12345");	

				con=JDBCUtil.getMySqlConnection();
				Statement stm=con.createStatement();
				//String s=	"select section,GROUP_CONCAT(DISTINCT teacher) as teacher,subject ,time from Class group by subject";
                 String s="select * from Class";
				PreparedStatement pstmt=con.prepareStatement(s ); /*PLACE HOLDER*/
			
				ResultSet rs= stm.executeQuery(s);
				while(rs.next()) {
					%>
				<tr>
					
					<td><%= rs.getString("section")%></td>
					<td><%= rs.getString("teacher")%></td>
					<td><%= rs.getString("subject")%></td>
					
				</tr>
							
	
	                 <% }stm.close();rs.close();con.close();	} catch (Exception e) {
						e.printStackTrace();
	                 } %>
	</table>	


    

 <form action="<%= request.getContextPath() %>/menu" method="post" >
         <br><br>
          <tr>
			<td colspan="2" align="center"> 
			<input type="submit" value="Back">
			</td>
		</tr>
              </form>    
</body>
</html>