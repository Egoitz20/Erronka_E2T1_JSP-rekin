<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kontrolagailua.TaulakHandler" %>
<%@ page import="datubasea.BezeroBean" %>
<%@ page import="java.util.ArrayList" %>
<%  
/**
* Bezero guztiak erakusten ditu
*/
    TaulakHandler handler = new TaulakHandler();
    ArrayList<BezeroBean> bezeroList = handler.getBezero();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Bezeroak</title>
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
                <span>Bezeroak</span>
            </a>
            <div class="user-info">
                <span class="badge badge-primary"><%= bezeroList.size() %> bezero</span>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="card">
            <h1>Bezeroak</h1>
            
            <br><br>
            <a href="datuakErakutsi.jsp">← Datuak menura</a> | 
            <a href="../login/menuPrintzipala.jsp">Menura itzuli</a>
            <br><br>
            
            <p>Bezero kopurua: <strong><%= bezeroList.size() %></strong></p>
            
            <% if (bezeroList.isEmpty()) { %>
                <p>Ez dago bezerorik.</p>
            <% } else { %>
                <table border="1" cellpadding="5" cellspacing="0">
                    <tr>
                        <th>ID</th>
                        <th>Izena</th>
                        <th>Helbidea</th>
                        <th>Emaila</th>
                        <th>Telefonoa</th>
                    </tr>
                    <% 
                    for (BezeroBean bez : bezeroList) { 
                    %>
                    <tr>
                        <td><%= bez.getId() %></td>
                        <td><%= bez.getIzena() %></td>
                        <td><%= bez.getHelbidea() %></td>
                        <td><%= bez.getEmaila() %></td>
                        <td><%= bez.getTlf() %></td>
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