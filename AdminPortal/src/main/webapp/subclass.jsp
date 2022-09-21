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
<h2>Assiging subject to class is done you  check in Class Details list</h2>
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


     <h1>To add Teacher to subject go to Teachers Detail</h1>
      <form action="<%= request.getContextPath() %>/getTeacher" method="post" >
          <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="GetTeacherDetail">
			</td>
		</tr>
              </form>    
              <h1> To go back to menu click back</h1>

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