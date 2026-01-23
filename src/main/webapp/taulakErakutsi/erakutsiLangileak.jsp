<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kontrolagailua.TaulakHandler" %>
<%@ page import="datubasea.LangileBean" %>
<%@ page import="java.util.ArrayList" %>
<%  
/**
* Langile guztiak erakusten ditu
*/
    TaulakHandler handler = new TaulakHandler();
    ArrayList<LangileBean> langileList = handler.getLangile();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Langileak</title>
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
                <span>Langileak</span>
            </a>
            <div class="user-info">
                <span class="badge badge-primary"><%= langileList.size() %> langile</span>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="card">
            <h1>Langileak</h1>
            
            <br><br>
            <a href="datuakErakutsi.jsp">← Datuak menura</a> | 
            <a href="../login/menuPrintzipala.jsp">Menura itzuli</a>
            <br><br>
            
            <p>Langile kopurua: <strong><%= langileList.size() %></strong></p>
            
            <% if (langileList.isEmpty()) { %>
                <p>Ez dago langilerik.</p>
            <% } else { %>
                <table border="1" cellpadding="5" cellspacing="0">
                    <tr>
                        <th>ID</th>
                        <th>Izen Abizenak</th>
                        <th>Erabiltzailea</th>
                        <th>Pasahitza</th>
                        <th>Emaila</th>
                        <th>Telefonoa</th>
                        <th>Kontratazio data</th>
                        <th>Soldata</th>
                        <th>Lanpostua</th>
                    </tr>
                    <% 
                    for (LangileBean lang : langileList) { 
                    %>
                    <tr>
                        <td><%= lang.getId() %></td>
                        <td><%= lang.getIzena() %></td>
                        <td><%= lang.getErabiltzailea() %></td>
                        <td><%= lang.getPasahitza() %></td>
                        <td><%= lang.getEmaila() %></td>
                        <td><%= lang.getTelefonoa() %></td>
                        <td><%= lang.getKontratazioData() %></td>
                        <td><%= lang.getSoldata() %></td>
                        <td><%= lang.getLanpostua() %></td>
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