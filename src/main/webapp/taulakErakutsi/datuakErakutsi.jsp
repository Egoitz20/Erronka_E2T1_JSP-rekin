<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
/**
 * Sistemako taula guztiak bistaratzeko menua.
 * Bistaratzeko orri espezifikoetarako estekak ematen ditu.
 */
 %>

<!DOCTYPE html>
<html>
<head>
    <title>Datuak Erakutsi</title>
      <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/global.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/tablas.css">
</head>
<body>
    <div class="app-header">
        <div class="header-content">
            <a href="../login/menuPrintzipala.jsp" class="logo">
                <div class="logo-icon">←</div>
                <span>Datuak Erakutsi</span>
            </a>
        </div>
    </div>
    
    <div class="container mt-5">
        <div class="card">
            <h1>📊 Datuak Erakutsi</h1>
            <p class="mb-4">Aukeratu erakutsiko den taula:</p>
            
            <div class="grid grid-2">
                <div class="option-card">
                    <a href="erakutsiErabiltzaileak.jsp">
                        <span class="option-number">1</span>
                        Erabiltzaileak
                    </a>
                    <p class="mt-2 text-gray">Sistemako erabiltzaile guztiak</p>
                </div>
                
                <div class="option-card">
                    <a href="erakutsiBezeroak.jsp">
                        <span class="option-number">2</span>
                        Bezeroak
                    </a>
                    <p class="mt-2 text-gray">Bezeroen datu-basea</p>
                </div>
                
                <div class="option-card">
                    <a href="erakutsiBiltegiak.jsp">
                        <span class="option-number">3</span>
                        Biltegiak
                    </a>
                    <p class="mt-2 text-gray">Biltegi eta almacenak</p>
                </div>
                
                <div class="option-card">
                    <a href="erakutsiProduktuak.jsp">
                        <span class="option-number">4</span>
                        Produktuak
                    </a>
                    <p class="mt-2 text-gray">Produktu eta eskaerak</p>
                </div>
                
                <div class="option-card">
                    <a href="erakutsiLangileak.jsp">
                        <span class="option-number">5</span>
                        Langileak
                    </a>
                    <p class="mt-2 text-gray">Langileen informazioa</p>
                </div>
            </div>
            
            <div class="text-center mt-5">
                <a href="../login/menuPrintzipala.jsp" class="btn btn-outline">
                    ← Menura itzuli
                </a>
            </div>
        </div>
    </div>
</body>
</html>