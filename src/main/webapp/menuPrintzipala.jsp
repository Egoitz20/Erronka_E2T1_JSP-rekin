<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% String erabiltzailea = (String) session.getAttribute("erabiltzailea"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu printzipala</title>
</head>
<body>
	<div>
        <h1>Menu Nagusia</h1>
        <div>
            <h2>Ongi etorri, <%= erabiltzailea %>!</h2>
        </div>
        
        <ul>
            <li><a href="erabiltzaileaGehitu.jsp">1. Erabiltzailea gehitu</a></li>
            <li><a href="xmlSortu.jsp">2. XML-a sortu</a></li>
            <li><a href="datuBaseEguneratu.jsp">3. Datu-basea eguneratu</a></li>
            <li><a href="datuakErakutsi.jsp">4. Datuak erakutsi</a></li>
            <li><a href="irten.jsp">5. Irten</a></li>
        </ul>
    </div>
</body>
</html>