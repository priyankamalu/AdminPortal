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
<h1>Find the Subject Details </h1>
	<table border="1">
	<tr>
	
	<th>Subject_name</th>
	
	</tr>	
	<% try { Class.forName("com.mysql.cj.jdbc.Driver"); // MySql Driver
	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root","root12345");	

				con=JDBCUtil.getMySqlConnection();
				Statement stm=con.createStatement();
				String s=" select * from Subject";
				//PreparedStatement pstmt=con.prepareStatement(s ); /*PLACE HOLDER*/
			
				ResultSet rs= stm.executeQuery(s);
				//while(rs.next()) {
					%>
				<tr>
					<td>Physics</td></tr>
					<tr><td>Maths</td></tr>
					<tr><td>English</td></tr>
					<tr><td>Biology</td></tr>
					<tr><td>Hindi</td></tr>
					<tr><td>Chemistry</td></tr>
					
					</tr>
							
	
	                 <%stm.close();rs.close();con.close();	} catch (Exception e) {
						e.printStackTrace();}
	 %>
</table>	
<h1>This Is List Of Classes </h1>
	<table border="1">
	<tr>
	
	<th>Class</th>
	
	</tr>	
	<% try { Class.forName("com.mysql.cj.jdbc.Driver"); // MySql Driver
	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root","root12345");	

				con=JDBCUtil.getMySqlConnection();
				Statement stm=con.createStatement();
				String s=" select section from Class";
				//PreparedStatement pstmt=con.prepareStatement(s ); /*PLACE HOLDER*/
			
				ResultSet rs= stm.executeQuery(s);
				//while(rs.next()) {
					%>
				<td>Twelfth</td></tr>
					<tr><td>Eleventh</td></tr>
					<tr><td>Tenth</td></tr>
					<tr><td>Ninth</td></tr>
					<tr><td>Eighth</td></tr>
					
	
	                 <% stm.close();rs.close();con.close();	} catch (Exception e) {
						e.printStackTrace();}
	 %>
</table>	
									
						<h1> Enter subject you want to assigne to class</h1>
					<form action="<%= request.getContextPath() %>/subclass" method="post" >
        
        	SubjectName: <input type="text" name="subjectname"required>
		<br><br>
		Class: <input type="text" name="classname"required>
		<br><br>  
            
          <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="Register">
			</td>
		</tr>
             
         
    </form>     	                

</body>
</html>