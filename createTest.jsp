<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Take Questions</title>
</head>
<body>
<% 
	int numQ = Integer.parseInt(request.getParameter("numQ")); 
	int numC = Integer.parseInt(request.getParameter("numC"));
	String s = "Question";
	out.println("<form action=\"questions.jsp\" method=\"get\" >\n");
	out.println("<input type=\"hidden\" name=\"numQ\" value=\""+numQ+"\" readonly>");
	out.println("<input type=\"hidden\" name=\"numC\" value=\""+numC+"\" readonly>");
	for(int i=1; i<=numQ; i++){
		out.println("<fieldset>\n");
		out.println
				(
		//<input type=\"text\" name=\"question"+i+"\"></p>
		"<p>Question "+i+": <textarea name=\"question"+i+"\" rows=\"10\" cols=\"20\"></textarea></p>"
				);
		//out.println("question"+i);
		for(int j=1; j<=numC; j++){
			out.println
			(
		"<p> Choice "+j+": <input type=\"text\" name=\"choice"+i+"."+j+"\"> <input type=\"checkbox\" name=\"answer"+i+"\" value=\"choice"+i+"."+j+"\"></p>"
			);
		//out.println("choice"+i+"."+j);
		}
		out.println("</fieldset>\n");
	}
	out.println("<input type=\"submit\" value=\"Create Test\">\n");
%>
</body>
</html>