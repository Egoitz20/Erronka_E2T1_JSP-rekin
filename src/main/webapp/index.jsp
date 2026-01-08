<%@page import="login.Sarbidea"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Saiakera-kontagailua hasieratu edo berreskuratu
Integer loginSaiakerak = (Integer) session.getAttribute("loginSaiakerak");
	if (loginSaiakerak == null) {
		loginSaiakerak = 4;
		session.setAttribute("loginSaiakerak", loginSaiakerak);
	}

String errorea = (String) request.getParameter("errorea");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

	<%
		if (errorea != null) {
	%>
	
	<p><%=errorea%></p>
	
	<%
		if (loginSaiakerak > 0) {
	%>
	<p>Oraindik geratzen zaizu: <%=loginSaiakerak%> saikerak.</p>
	<%
	}
	%>
	<%
	}
	%>
	
	<form method="post" action="prozesatuLogin.jsp">
		<label>Erabiltzailea:</label><br> 
		<input type="text" name=erabiltzailea><br> 
		<label>Pasahitza:</label><br>
		<input type="password" name=pasahitza><br> <input
			type="submit" value="Sartu">
	</form>

</body>
</html>