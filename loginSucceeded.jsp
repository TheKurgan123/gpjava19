<!DOCTYPE html >
<html lang="en" xml:lang="en">
<head>
	<title>Success </title> 
</head>
<body  style="font-family: Arial, Helvetica, sans-serif;  font-size:large; width:100%; margin:10px; " >



<%@ page import = "gpjava19.*, java.util.Date" %>
<%!
	public Common19b c19 = new Common19b();
%>
<%
	String passwordStr1 = request.getParameter("passwordStr");
	String passwordVar = "g";
	String nameStr1 = request.getParameter("surferName");
	String emailStr1 = request.getParameter("email");
	//String siteURL = "login.jsp";
	session.setAttribute("nameStr1", nameStr1);
	String loginDisplay="", dateStr1="";
	Date dateNow = new java.util.Date();
	dateStr1 = Dates19.dateFormat(dateNow, 8);
	boolean passOK = Common19b.validatePass(passwordStr1,passwordVar) ;
	boolean emailOK = Common19b.isValidEmail(emailStr1);
	if(passOK && emailOK) {
		loginDisplay = nameStr1 +" "+ Common19b.loginSucceeded + " - "+ dateStr1 ; 
	}
	else {   loginDisplay = Common19b.loginFailed;   }
	loginDisplay += "<br/>"+ Common19b.validateEmailOutput;   
%>

<%--   --- Presentation Output ---  --%>
<section  style="width:800px; margin:10px; line-height:1.5em; border: solid 1px lightgray;">
	<h1   style="margin:10px; padding:20px; ">
		Login Processed
	</h1>
	<div  style="padding:1% 3.5%; ">
		<%  out.println( loginDisplay );  %>
	</div>
	<br/>
	
	<div  style="width:93%;  margin:0px; margin-top:10px;  padding:0.5% 3.33%;  font-size:0.88em; background-color:lightgrey; ">
		Form produced by Green Lamar, package "gpjava19", class "Common19b", method "loginForm1"
	</div>
</section>


</body>
</html>
