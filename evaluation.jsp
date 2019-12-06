<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Evaluation</title>
</head>
<body>
<% 
int numQ = Integer.parseInt(request.getParameter("numQ")); 
int numC = Integer.parseInt(request.getParameter("numC"));
int numCor = 0;
String q = "Question";
String qq = "question";
String c = "Choice";
String cc = "choice";
String ans = "answer";
String uans ="";
//out.println("<form action=\"evaluation.jsp\" method=\"post\" >\n");
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
	uans = request.getParameter(cc+i);
	//out.println(uans+"\n");
	//out.println(choice+"\n");
	if(choice.equals(uans))
	//out.println(choice+"\n");
		out.println
		(
	"<p> <input type=\"radio\" name=\"choice"+i+"\" value=\""+choice+"\" readonly checked> "+choice+"</p>"
		);
		else out.println
				(
	"<p> <input type=\"radio\" name=\"choice"+i+"\" value=\""+choice+"\" disabled=\"disabled\" readonly> "+choice+"</p>"	
				);	
	//out.println("choice"+i+"."+j);
	
	}
	String answer = request.getParameter(ans+i);
	if(uans.equals(answer)){
		out.println("<p>Yes! Correct Answer &#10004;</p>");
		numCor++;
	}
	else out.println("<p>No!! Correct Answer is "+answer+" &#10060;</p>");
	//out.println(answer+"\n");
/*	out.println
	(
	"<p><input type=\"hidden\" name=\"answer"+i+"\" value=\""+answer+"\" readonly></p>"
	); */
	/*
	out.println
	(
	"<script> document.getElementById(\""+i+"\").innerHTML = document.getElementById(\""+ans+i+"\"); </script>"
	);
	*/
	out.println("</fieldset>\n");
}
double score = (double)numCor / numQ * 100;
String scr = String.format("Overall: %.2f", score);
scr += "%\n";
out.println("<p>"+scr+"</p>");
%>
</body>
</html>