<%@page import="kontrolagailua.TaulaEguneratu"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String mezua = "";
    String errorea = "";
    
    try {
        TaulaEguneratu taulaEguneratu = new TaulaEguneratu();
        taulaEguneratu.saltzaileSoldata();
        taulaEguneratu.bulegariSoldata();
        
        mezua = "Saltzaile eta bulegarien soldatak ondo eguneratu dira.";
        
    } catch (Exception e) {
        errorea = "Errorea taula eguneratzean: " + e.getMessage();
 
        if (e.getCause() != null) {
            errorea += " (Kausa: " + e.getCause().getMessage() + ")";
        }
    }
   
    String redirectURL = "datuBaseEguneratu.jsp?";
    response.sendRedirect(redirectURL);
%>