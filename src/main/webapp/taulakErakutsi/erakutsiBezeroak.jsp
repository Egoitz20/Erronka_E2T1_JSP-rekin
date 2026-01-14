<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kontrolagailua.TaulakHandler" %>
<%@ page import="datuBasea.BezeroBean" %>
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
</head>
<body>
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
</body>
</html>