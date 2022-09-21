<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login Successful to view menu click below</h1>
 <form action="<%= request.getContextPath() %>/menu" method="post" >
   <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="Menu">
			</td>
		</tr>
             
         
    </form>     
</body>
</html>