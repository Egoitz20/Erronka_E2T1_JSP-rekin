<%@page import="kontrolagailua.EremuaGehitu"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

/**
 * SOLDATA eremua LANGILE taulan gehitzen du.
 * EremuaGehitu klasea erabiltzen du.
 * 
 * @uses EremuaGehitu
 * @redirect datuBaseEguneratu.jsp
 */
 
    String mezua = "";
    String errorea = "";
    
    try {
        EremuaGehitu eremuaGehitu = new EremuaGehitu();
        eremuaGehitu.sortuSoldataEremua();
        mezua = "SOLDATA eremua ondo gehitu da LANGILE taulan.";
        
    } catch (Exception e) {
        errorea = "Errorea eremua gehitzean: " + e.getMessage();
       
        if (e.getCause() != null) {
            errorea += " (Kausa: " + e.getCause().getMessage() + ")";
        }
    }
    
    String redirectURL = "datuBaseEguneratu.jsp?";
    
    response.sendRedirect(redirectURL);
%>