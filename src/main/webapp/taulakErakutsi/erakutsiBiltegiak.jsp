<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kontrolagailua.TaulakHandler" %>
<%@ page import="datubasea.BiltegiBean" %>
<%@ page import="java.util.ArrayList" %>
<%
/**
* Biltegi guztiak erakusten ditu
*/
    TaulakHandler handler = new TaulakHandler();
    ArrayList<BiltegiBean> biltegiList = handler.getBiltegi();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Biltegiak</title>
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
                <span>Biltegiak</span>
            </a>
            <div class="user-info">
                <span class="badge badge-primary"><%= biltegiList.size() %> biltegi</span>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="card">
            <h1>Biltegiak</h1>
            
            <br><br>
            <a href="datuakErakutsi.jsp">← Datuak menura</a> | 
            <a href="../login/menuPrintzipala.jsp">Menura itzuli</a>
            <br><br>
            
            <p>Biltegi kopurua: <strong><%= biltegiList.size() %></strong></p>
            
            <% if (biltegiList.isEmpty()) { %>
                <p>Ez dago biltegirik.</p>
            <% } else { %>
                <table border="1" cellpadding="5" cellspacing="0">
                    <tr>
                        <th>ID</th>
                        <th>Izena</th>
                        <th>Helbidea</th>
                        <th>Posta kodea</th>
                        <th>Udalerria</th>
                        <th>Probintzia</th>
                        <th>Herrialdea</th>
                        <th>Kontinentea</th>
                    </tr>
                    <% 
                    for (BiltegiBean bil : biltegiList) { 
                    %>
                    <tr>
                        <td><%= bil.getId() %></td>
                        <td><%= bil.getIzena() %></td>
                        <td><%= bil.getHelbidea() %></td>
                        <td><%= bil.getPostaKodea() %></td>
                        <td><%= bil.getUdalerria() %></td>
                        <td><%= bil.getProbintzia() %></td>
                        <td><%= bil.getHerrialde() %></td>
                        <td><%= bil.getKontinente() %></td>
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