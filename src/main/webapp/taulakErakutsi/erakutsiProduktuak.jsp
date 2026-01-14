<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kontrolagailua.TaulakHandler" %>
<%@ page import="datuBasea.ProduktuBean" %>
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
</head>
<body>
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
</body>
</html>