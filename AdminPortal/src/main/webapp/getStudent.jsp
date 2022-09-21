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
		<h1>Find the student Details </h1>
	<table border="1">
	<tr>
	<th>Roll_No</th>
	<th>First_name</th>
	<th>Last_name</th>
	<th>Age</th>
	<th>Class</th>
	<th>Teacher</th>
	</tr>	
	<% try {    			Class.forName("com.mysql.cj.jdbc.Driver"); // MySql Driver
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root","root12345");	

				con=JDBCUtil.getMySqlConnection();
				Statement stm=con.createStatement();
				//String s=" select * from Student";
           String s="select id,fname,lname,age,aclass,group_concat(distinct teacher )as teacher  from student,class group by id";
			//String s="select id,fname,lname,age,aclass,teacher  from student,class ";

				ResultSet rs= stm.executeQuery(s);
				while(rs.next()) {
					%>
				<tr>
					<td><%= rs.getInt("id")%></td>
					<td><%= rs.getString("fname")%></td>
					<td><%= rs.getString("lname")%></td>
					<td><%= rs.getInt("age")%></td>
					<td><%= rs.getString("aclass")%></td>
					<td><%= rs.getString("teacher")%></td>
					</tr>
							
	
	                 <% }stm.close();rs.close();con.close();	} catch (Exception e) {
						e.printStackTrace();
					}
							 %>
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
	
