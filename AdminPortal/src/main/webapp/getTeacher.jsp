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

		<h1>Find the Teachers Details </h1>
	<table border="1">
	<tr>
	<th>id</th>
	<th>First_name</th>
	<th>Last_name</th>
	<th>Age</th>
	</tr>	
	<% try {    			Class.forName("com.mysql.cj.jdbc.Driver"); // MySql Driver
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root","root12345");	

				con=JDBCUtil.getMySqlConnection();
				Statement stm=con.createStatement();
				String s=" select * from Teacher";
				//PreparedStatement pstmt=con.prepareStatement(s ); /*PLACE HOLDER*/
			
				ResultSet rs= stm.executeQuery(s);
				while(rs.next()) {
					%>
				<tr>
					<td><%= rs.getInt("id")%></td>
					<td><%= rs.getString("fname")%></td>
					<td><%= rs.getString("lname")%></td>
					<td><%= rs.getInt("age")%></td>
					
	
	                 <% }stm.close();rs.close(); con.close();	} catch (Exception e) {
						e.printStackTrace();
					}
							 %>
		</table>
		<h1>Check class and subject details</h1>				
							
	<table border="1">
	<tr>
	
	<th>Class</th>
	<th>Teacher</th>
	<th>Subject</th>
	
	</tr>	
	<% try {    			Class.forName("com.mysql.cj.jdbc.Driver"); // MySql Driver
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root","root12345");	

				con=JDBCUtil.getMySqlConnection();
				Statement stm=con.createStatement();
				//String s=	"select section,GROUP_CONCAT(DISTINCT subject) as subject  from Class group by section";
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
									
						<h1> Enter subject you want to assigne to class</h1>
					<form action="<%= request.getContextPath() %>/subclasstea" method="post" >
          
            
        	
		Class: <input type="text" name="classname"required>
		<br><br>  
		 subject: <input type="text" name="subjectname"required>
		<br><br>
		 Teacher: <input type="text" name="teachername"required>
		<br><br>  
            
          <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="Register">
			</td>
		</tr>
             
         
    </form>     	                



</body>
</html>