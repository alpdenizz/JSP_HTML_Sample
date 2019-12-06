<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions</title>
</head>
<body>
<%
/*	
	int numC = Integer.parseInt(request.getParameter("numC"));
	String q = "Question";
	String qq = "question";
	String c = "Choice";
	String cc = "choice";
	for(int i=1; i<=numQ; i++){
		out.println
		(
		"<p> "+q+i+": "+request.getParameter(qq+i)+"</p>"		
		);
		for(int j=1; j<=numC; j++){
			out.println
			(
			"<p> "+c+j+": "+request.getParameter(cc+i+"."+j)+"</p>"		
			);
		}
		out.println("###########################################");
	} */
	
	int numQ = Integer.parseInt(request.getParameter("numQ")); 
	int numC = Integer.parseInt(request.getParameter("numC"));
	String q = "Question";
	String qq = "question";
	String c = "Choice";
	String cc = "choice";
	String ans = "answer";
	out.println("<form action=\"evaluation.jsp\" method=\"get\" >\n");
	out.println("<input type=\"hidden\" name=\"numQ\" value=\""+numQ+"\" readonly>");
	out.println("<input type=\"hidden\" name=\"numC\" value=\""+numC+"\" readonly>");
	for(int i=1; i<=numQ; i++){
		String quest = request.getParameter(qq+i);
		out.println("<fieldset>\n");
		out.println
				(
		//<p> Question "+i+": <input type=\"text\" name=\"question"+i+"\" value=\""+quest+"\" readonly> </p>
		"<p> Question "+i+": <textarea name=\"question"+i+"\" rows=\"10\" cols=\"20\" readonly>"+quest+"</textarea> </p>"
				);
		//out.println("question"+i);
		for(int j=1; j<=numC; j++){
		String choice = request.getParameter(cc+i+"."+j);
		//out.println(choice+"\n");
			out.println
			(
		"<p> <input type=\"radio\" name=\"choice"+i+"\" value=\""+choice+"\" readonly> "+choice+"</p>" +
		"<p> <input type=\"hidden\" name=\"choice"+i+"."+j+"\" value=\""+choice+"\" readonly></p>"	
			);
		//out.println("choice"+i+"."+j);
		
		}
		String answer = request.getParameter(request.getParameter(ans+i));
		out.println
		(
		"<p><input type=\"hidden\" name=\"answer"+i+"\" value=\""+answer+"\" readonly></p>"
		);
		/*
		out.println
		(
		"<script> document.getElementById(\""+i+"\").innerHTML = document.getElementById(\""+ans+i+"\"); </script>"
		);
		*/
		out.println("</fieldset>\n");
	}
	out.println("<input type=\"submit\" value=\"Submit\">\n");
%>

</body>
</html>