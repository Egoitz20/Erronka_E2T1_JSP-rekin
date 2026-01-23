<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    /**
     * Sistemako menu nagusia saioa hasi ondoren.
     * Sistemako funtzionalitate guztietara sarbidea ematen du.
     * 
     * @sessionAttribute erabiltzailea Saioa hasitako erabiltzailearen izena
     * @links 
     *   - erabiltzaileGehiketa/erabiltzaileaGehitu.jsp
     *   - xml/xmlSortu.jsp
     *   - datuBaseEguneraketa/datuBaseEguneratu.jsp
     *   - taulakErakutsi/datuakErakutsi.jsp
     *   - irten.jsp
     */
     
    String erabiltzailea = (String) session.getAttribute("erabiltzailea"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu printzipala</title>
<<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/global.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/menu.css">
</head>
<body>
    <div class="app-header">
        <div class="header-content">
            <a href="#" class="logo">
                <div class="logo-icon">SG</div>
                <span>GAMESTOP APLIKAZIOA</span>
            </a>
            <div class="user-info">
                <span class="badge badge-primary"><%= erabiltzailea %></span>
                <a href="./irten.jsp" class="btn btn-outline btn-sm">Irten</a>
            </div>
        </div>
    </div>
    
    <div class="container mt-5">
        <div class="card">
            <div class="text-center mb-5">
                <h1>Menu Nagusia</h1>
                <p class="text-muted">Aukeratu ekintza bat</p>
            </div>
            
            <div class="grid grid-2">
                <div class="option-card">
                    <a href="../erabiltzaileGehiketa/erabiltzaileaGehitu.jsp">
                        <span class="option-number">1</span>
                        Erabiltzailea gehitu
                    </a>
                    <p class="mt-2 text-gray">Sistemako erabiltzaile berriak gehitu</p>
                </div>
                
                <div class="option-card">
                    <a href="../xml/xmlSortu.jsp">
                        <span class="option-number">2</span>
                        XML-a sortu
                    </a>
                    <p class="mt-2 text-gray">XML fitxategiak sortu eta deskargatu</p>
                </div>
                
                <div class="option-card">
                    <a href="../datuBaseEguneraketa/datuBaseEguneratu.jsp">
                        <span class="option-number">3</span>
                        Datu-basea eguneratu
                    </a>
                    <p class="mt-2 text-gray">Datu-basearen egitura aldatu</p>
                </div>
                
                <div class="option-card">
                    <a href="../taulakErakutsi/datuakErakutsi.jsp">
                        <span class="option-number">4</span>
                        Datuak erakutsi
                    </p>
                    <p class="mt-2 text-gray">Taulako datuak kontsultatu</p>
                </div>
            </div>
            
            <div class="text-center mt-5">
                <a href="./irten.jsp" class="btn btn-outline">
                    🚪 Irten sistematik
                </a>
            </div>
        </div>
    </div>
</body>
</html>