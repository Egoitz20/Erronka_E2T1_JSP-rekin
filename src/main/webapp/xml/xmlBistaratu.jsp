<%@page import="kontrolagailua.XmlSortu"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% 

/**
 * Sortutako XML eduki nabigatzailean erakusten du.
 * XML sortzeko XmlSortu erabiltzen du eta formatu onean erakusten du.
 * 
 * @uses XmlSortu
 * @output HTMLrako formatua eta ihesarazita dagoen XML
 */
 
    String xmlContent = "";
    try {
        XmlSortu xmlSortu = new XmlSortu();
        xmlContent = xmlSortu.xml();
    } catch (Exception e) {
        out.println("Errorea: " + e.getMessage());
    }
    
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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/global.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/xml.css">
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