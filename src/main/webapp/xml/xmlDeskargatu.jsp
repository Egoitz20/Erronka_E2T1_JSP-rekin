<%@page import="kontrolagailua.XmlSortu"%>
<%@page contentType="text/xml;charset=UTF-8" pageEncoding="UTF-8"%>
<% 

/**
 * XML fitxategi gisa sortzen eta deskargatzen du.
 * Deskargatzera behartzeko HTTP goiburuak konfiguratzen ditu.
 * 
 * @contentType text/xml
 * @header Content-Disposition: attachment
 * @uses XmlSortu
 */
 
    String erabiltzailea = (String) session.getAttribute("erabiltzailea");
    if (erabiltzailea == null || erabiltzailea.isEmpty()) {
        out.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><error>Saioa itxi da</error>");
        return;
    }
    
    try {
        XmlSortu xmlSortu = new XmlSortu();
        String xmlContent = xmlSortu.xml();
        
        xmlContent = xmlContent.trim();
        
        response.setHeader("Content-Disposition", "attachment; filename=\"langileak.xml\"");
        response.setContentLength(xmlContent.getBytes("UTF-8").length);
        
        out.print(xmlContent);
        
    } catch (Exception e) {
        out.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><error>Errorea: " + e.getMessage() + "</error>");
    }
%>