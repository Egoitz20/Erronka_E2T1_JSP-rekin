<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String erabiltzailea = (String) session.getAttribute("erabiltzailea");
    String mezua = request.getParameter("mezua");
    String errorea = request.getParameter("errorea");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Erabiltzailea Gehitu</title>
</head>
<body>
    <h1>Erabiltzailea Gehitu</h1>
    
    <% if (mezua != null) { %>
        <p><%= mezua %></p>
    <% } %>
    
    <% if (errorea != null) { %>
        <p style="color: red;"><%= errorea %></p>
    <% } %>
    
    <form action="prozesatuErabiltzaileGehiketa.jsp" method="post">
        <label>Sartu erabiltzaile berriaren izena:</label><br>
        <input type="text" name="erabiltzaileBerria" required><br><br>
        
        <label>Sartu sortzeko erabiltzailearen pasahitza:</label><br>
        <input type="password" name="pasahitzaSortu" required><br><br>
        
        <label>Berridatzi pasahitza:</label><br>
        <input type="password" name="pasahitzaKonfirmazioa" required><br><br>
        
        <input type="submit" value="Gehitu">
    </form>
    
    <br>
    <a href="menuPrintzipala.jsp">Menura itzuli</a>
</body>
</html>