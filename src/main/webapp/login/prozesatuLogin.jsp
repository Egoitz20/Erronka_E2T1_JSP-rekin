<%@page import="kontrolagailua.ErabiltzaileOnarpenaLiburutegi"%>
<%
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