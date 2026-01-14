<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
String mezua = request.getParameter("mezua");
String errorea = request.getParameter("errorea");
%>
<!DOCTYPE html>
<html>
<head>
<title>Datu-basea Eguneratu</title>
</head>
<body>
	<h1>Datu-basea Eguneratu</h1>

	<h2>Aukeratu ekintza bat:</h2>

	<p>
		<a href="exekutatuEremuaGehitu.jsp"> <strong>1. Eremua gehitu</strong></a>
	</p>
	<br>
	<p>
		<a href="exekutatuTaulaEguneratu.jsp"> <strong>2. Taula eguneratu</strong></a>
	</p>

	<br>
	<a href="../login/menuPrintzipala.jsp">← Menura itzuli</a>
</body>
</html>