<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Store Information</title>
</head>
<body>

<%
	String username = request.getParameter("username");
	String psw = request.getParameter("psw");
	out.println
	(
		"<script> localStorage.setItem(\""+username+"\", \""+psw+"\"); </script>"	
	);
	out.println
	(
		"<a href=\"homePage.html\">Log in</a>"
	);
%>

</body>
</html>