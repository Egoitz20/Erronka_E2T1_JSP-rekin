<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kontrolagailua.TaulakHandler" %>
<%@ page import="datubasea.ProduktuBean" %>
<%@ page import="java.util.ArrayList" %>
<%  
/**
* Produktu guztiak erakusten ditu
*/
    TaulakHandler handler = new TaulakHandler();
    ArrayList<ProduktuBean> produktuList = handler.getProduktu();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Produktuak</title>
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
                <span>Produktuak</span>
            </a>
            <div class="user-info">
                <span class="badge badge-primary"><%= produktuList.size() %> produktu</span>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="card">
            <h1>Produktuak</h1>
            
            <br><br>
            <a href="datuakErakutsi.jsp">← Datuak menura</a> | 
            <a href="../login/menuPrintzipala.jsp">Menura itzuli</a>
            <br><br>
            
            <p>Produktu kopurua: <strong><%= produktuList.size() %></strong></p>
            
            <% if (produktuList.isEmpty()) { %>
                <p>Ez dago produkturik.</p>
            <% } else { %>
                <table border="1" cellpadding="5" cellspacing="0">
                    <tr>
                        <th>ID</th>
                        <th>Produktu izena</th>
                        <th>Deskribapena</th>
                        <th>Balioa</th>
                        <th>Salneurria</th>
                        <th>Kategoria</th>
                        <th>Kopurua</th>
                        <th>Eskaera data</th>
                        <th>Egoera</th>
                        <th>Bezeroa</th>
                        <th>Saltzailea</th>
                        <th>Biltegia</th>
                    </tr>
                    <% 
                    for (ProduktuBean prod : produktuList) { 
                    %>
                    <tr>
                        <td><%= prod.getId() %></td>
                        <td><%= prod.getProduktuIzena() %></td>
                        <td><%= prod.getDeskribapena() %></td>
                        <td><%= prod.getBalioa() %></td>
                        <td><%= prod.getSalneurria() %></td>
                        <td><%= prod.getKategoriaIzena() %></td>
                        <td><%= prod.getKopurua() %></td>
                        <td><%= prod.getEskaeraData() %></td>
                        <td><%= prod.getEskaeraEgoera() %></td>
                        <td><%= prod.getBezeroIzena() %></td>
                        <td><%= prod.getSaltzailea() %></td>
                        <td><%= prod.getBiltegiIzena() %></td>
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