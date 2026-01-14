<%@page import="kontrolagailua.ErabiltzaileOnarpenaLiburutegi"%>
<%
/**
 * Formulariotik bidalitako login kredentzialak prozesatzen ditu.
* Kredentzialak baliozkotzeko ErabiltzaileOnarpenaLiburutegi erabiltzen du.
* 
* @sessionAttribute loginSaiakerak Saiakera kontagailua
* @sessionAttribute erabiltzailea Saioa hasitako erabiltzaile-izena
* @requestParameter erabiltzailea Formularioko erabiltzailea
* @requestParameter pasahitza Formularioko pasahitza
* @redirect menuPrintzipala.jsp login arrakastatsua bada
* @redirect index.jsp errore mezua eroriz huts egin badu
*/

// Kontagailua berriro itzuli
    Integer loginSaiakerak = (Integer) session.getAttribute("loginSaiakerak");
    if (loginSaiakerak == null) {
        loginSaiakerak = 4;
    }
    
    String erabiltzailea = request.getParameter("erabiltzailea");
    String pasahitza = request.getParameter("pasahitza");
    
    if (loginSaiakerak <= 0) {
        response.sendRedirect("login.jsp?errorea=Saikereen muga heldu zara... Programa ixten...");
        return;
    }
    
    // Balidatu login-a
    ErabiltzaileOnarpenaLiburutegi onarpena = new ErabiltzaileOnarpenaLiburutegi();
    
    if (onarpena.erabiltzaileOnarpena(erabiltzailea, pasahitza)) {
        // Login ona
        session.removeAttribute("loginSaiakerak"); // Limpiar contador
        session.setAttribute("erabiltzailea", erabiltzailea);
        response.sendRedirect("menuPrintzipala.jsp");
    } else {
        // Login txarra
        loginSaiakerak--;
        session.setAttribute("loginSaiakerak", loginSaiakerak);
        
        if (loginSaiakerak == 0) {
            response.sendRedirect("login.jsp?errorea=Saikereen muga heldu zara... Programa ixten...");
        } else {
            response.sendRedirect("login.jsp?errorea=Erabiltzaile edo pasahitza okerra. Berriro saiatu.");
        }
    }
%>