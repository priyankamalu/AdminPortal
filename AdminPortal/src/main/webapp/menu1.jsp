<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2> wrong passoword or username go back and retype again</h2>
 <form action="<%= request.getContextPath() %>/login" method="post" >
          <tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="Back">
			</td>
		</tr>
              </form>     

</body>
</html>