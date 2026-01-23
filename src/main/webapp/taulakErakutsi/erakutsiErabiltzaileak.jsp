<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kontrolagailua.TaulakHandler" %>
<%@ page import="datubasea.ErabiltzaileBean" %>
<%@ page import="java.util.ArrayList" %>
<%  
/**
* Erabiltzaile guztiak erakusten ditu
*/
    TaulakHandler handler = new TaulakHandler();
    ArrayList<ErabiltzaileBean> erabiltzaileList = handler.getErabiltzaile();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Erabiltzaileak</title>
     <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/global.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/tablas.css">
</head>
<body>
    <div class="app-header">
        <div class="header-content">
            <a href="datuakErakutsi.jsp" class="logo">
                <div class="logo-icon">←</div>
                <span>Erabiltzaileak</span>
            </a>
            <div class="user-info">
                <span class="badge badge-primary"><%= erabiltzaileList.size() %> erabiltzaile</span>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="card">
            <h1>Erabiltzaileak</h1>
            
            <br><br>
            <a href="datuakErakutsi.jsp">← Datuak menura</a> | 
            <a href="../login/menuPrintzipala.jsp">Menura itzuli</a>
            <br><br>
            
            <p>Erabiltzaile kopurua: <strong><%= erabiltzaileList.size() %></strong></p>
            
            <% if (erabiltzaileList.isEmpty()) { %>
                <p>Ez dago erabiltzailerik.</p>
            <% } else { %>
                <table border="1" cellpadding="5" cellspacing="0">
                    <tr>
                        <th>ID</th>
                        <th>Izena</th>
                        <th>Pasahitza</th>
                    </tr>
                    <% 
                    for (ErabiltzaileBean erab : erabiltzaileList) { 
                    %>
                    <tr>
                        <td><%= erab.getId() %></td>
                        <td><%= erab.getIzena() %></td>
                        <td><%= erab.getPasahitza() %></td>
                    </tr>
                    <% } %>
                </table>
            <% } %>
            
            <br><br>
            <a href="datuakErakutsi.jsp">← Datuak menura</a> | 
            <a href="../login/menuPrintzipala.jsp">Menura itzuli</a>
        </div>
    </div>
</body>
</html>