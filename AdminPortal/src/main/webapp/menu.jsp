<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Choose From the List</title>
</head>
<body>
  
  <br> <br> <br><h1 >Welcome To Admin Portal </h1>
  <br><h2>Students List</h2>
  
  <form action="<%= request.getContextPath() %>/getStudent" method="post" >
          <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="GetStudentDetail">
			</td>
		</tr>
              </form>    
   
  <br> <h2>Choose the list you want work with</h2>
  
   
 
              
              
              <form action="<%= request.getContextPath() %>/getSubject" method="post" >
          <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="assignSubject">
			</td>
		</tr>
              </form>     
              <form action="<%= request.getContextPath() %>/getClass" method="post" >
          <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="GetClassDetail">
			</td>
		</tr>
              </form>     
              
              
 
</body>
</html>