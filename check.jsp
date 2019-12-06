<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check</title>
</head>
<body>

<%
	String username = request.getParameter("username");
	String psw = request.getParameter("psw");
	out.println
	(
		" <script> var pswd = localStorage.getItem(\""+username+"\");"+
		" if ("+psw+" == pswd) { alert(\"Log in successful\");"+
		" window.location = \"takeInput.html\"; }"+
		" else { alert(\"Password incorrect\");"+
		" window.location = \"homePage.html\"; }"+
		" </script>"
	);
%>

</body>
</html>