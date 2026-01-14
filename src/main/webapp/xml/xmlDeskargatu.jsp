<%@page import="kontrolagailua.XmlSortu"%>
<%@page contentType="text/xml;charset=UTF-8" pageEncoding="UTF-8"%><%
    // IMPORTANTE: No espacios ni saltos de línea antes o después de estos tags
    String erabiltzailea = (String) session.getAttribute("erabiltzailea");
    if (erabiltzailea == null || erabiltzailea.isEmpty()) {
        out.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><error>Saioa itxi da</error>");
        return;
    }
    
    try {
        XmlSortu xmlSortu = new XmlSortu();
        String xmlContent = xmlSortu.xml();
        
        // Asegurar que no hay espacios antes
        xmlContent = xmlContent.trim();
        
        // Configurar cabeceras
        response.setHeader("Content-Disposition", "attachment; filename=\"langileak.xml\"");
        response.setContentLength(xmlContent.getBytes("UTF-8").length);
        
        out.print(xmlContent);
        
    } catch (Exception e) {
        out.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><error>Errorea: " + e.getMessage() + "</error>");
    }
%>