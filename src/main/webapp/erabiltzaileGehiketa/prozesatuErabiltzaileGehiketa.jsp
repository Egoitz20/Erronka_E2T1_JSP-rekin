<%@page import="kontrolagailua.ErabiltzaileGehiketaLiburutegia"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  
    // Formularioko parametroak lortzea
    String erabiltzaileBerria = request.getParameter("erabiltzaileBerria");
    String pasahitzaSortu = request.getParameter("pasahitzaSortu");
    String pasahitzaKonfirmazioa = request.getParameter("pasahitzaKonfirmazioa");
    
    // Balidatu pasahitzak berdinak direla
    if (!pasahitzaSortu.equals(pasahitzaKonfirmazioa)) {
        response.sendRedirect("erabiltzaileaGehitu.jsp?errorea=Ez duzu ondo idatzi pasahitzak, mesedez saiatu berriro.");
        return;
    }
    
    // Eremuak hutsik ez daudela baliozkotzea
    if (erabiltzaileBerria == null || pasahitzaSortu == null ) {
        response.sendRedirect("erabiltzaileaGehitu.jsp?errorea=Erabiltzailea eta pasahitza bete behar dira.");
        return;
    }
    
    try {
        //Erabiltzailearen gehiketa
        ErabiltzaileGehiketaLiburutegia onarpena = new ErabiltzaileGehiketaLiburutegia();
        onarpena.gehituErabiltzaile(erabiltzaileBerria, pasahitzaSortu);
        
        //Erabiltzaile ondo sortu den mesua
        response.sendRedirect("erabiltzaileaGehitu.jsp?mezua=Zure erabiltzailea ondo sortu da!");
        
    } catch (Exception e) {
        //Erroreak
        response.sendRedirect("erabiltzaileaGehitu.jsp?errorea=Errorea erabiltzailea gehitzean: " + e.getMessage());
    }
%>