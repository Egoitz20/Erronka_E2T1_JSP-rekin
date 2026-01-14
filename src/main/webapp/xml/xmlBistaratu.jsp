<%@page import="kontrolagailua.XmlSortu"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  
    String xmlContent = "";
    try {
        XmlSortu xmlSortu = new XmlSortu();
        xmlContent = xmlSortu.xml();
    } catch (Exception e) {
        out.println("Errorea: " + e.getMessage());
    }
    
    // Escapear para HTML
    String escapedXml = "";
    if (!xmlContent.isEmpty()) {
        escapedXml = xmlContent.replace("&", "&amp;")
                              .replace("<", "&lt;")
                              .replace(">", "&gt;")
                              .replace("\"", "&quot;")
                              .replace("'", "&#39;");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>XML Ikusi</title>
    <style>
        pre {
            background-color: #f4f4f4;
            border: 1px solid #ddd;
            padding: 10px;
            overflow: auto;
            font-family: monospace;
            white-space: pre-wrap;
        }
        .xml-tag { color: #0000FF; }
        .xml-attr { color: #FF0000; }
        .xml-text { color: #000000; }
    </style>
</head>
<body>
    <h1>XML Ikusi</h1>
    
    <a href="xmlSortu.jsp">← XML menura</a> | 
    <a href="../login/menuPrintzipala.jsp">Menura itzuli</a>
    <br>
    
    <% if (!xmlContent.isEmpty()) { %>
        <p>XML ondo sortu da. <strong><%= xmlContent.split("<langile").length - 1 %> langile</strong> aurkitu dira.</p>
        
        <h2>XML edukia:</h2>
        <pre><%= escapedXml %></pre>
        
        <br>
        <a href="xmlDeskargatu.jsp">Deskargatu XML fitxategia</a>
    <% } else { %>
        <p>Ez da XML-ik sortu.</p>
    <% } %>
    
    <br>
    <a href="xmlSortu.jsp">← XML menura</a> | 
    <a href="../login/menuPrintzipala.jsp">Menura itzuli</a>
</body>
</html>