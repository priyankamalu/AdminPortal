<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h1> Admin Login </h1>  
   <form action="<%= request.getContextPath() %>/success" method="post" >
        
        	UserName: <input type="text" name="username"required>
		<br><br>
		Password: <input type="password" name="password"required>
		<br><br>  
            
          <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="Register">
			</td>
		</tr>
             
         
    </form>     

</body>
</html>