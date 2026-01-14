<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/**
 * Sistemako login orri nagusia.
 * Sartzeko saiakera-kontrola barne du (gehienez 4 saiakera).
 * 
 * @sessionAttribute loginSaiakerak Login saiakera-kontagailua
 * @requestParameter errorea Erakutsi beharreko errore mezua
 */
 
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
			out.println(errorea);
			
			if (loginSaiakerak > 0) {
				out.println("Oraindik geratzen zaizu: " + loginSaiakerak + " saikerak.");
			}
		}
	%>
	
	<form method="post" action="login/prozesatuLogin.jsp">
		<label>Erabiltzailea:</label><br> 
		<input type="text" name=erabiltzailea><br> 
		<label>Pasahitza:</label><br>
		<input type="password" name=pasahitza><br> 
		<input type="submit" value="Sartu">
	</form>

</body>
</html>