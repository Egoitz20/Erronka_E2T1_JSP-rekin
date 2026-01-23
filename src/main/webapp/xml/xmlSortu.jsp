<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
/**
 * XML sorrerako aukeraketarako menua.
 * Sortutako XMLa ikusteko edo deskargatzeko aukera ematen du.
 */ 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XML</title>
 <!-- Añadir aquí -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/global.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/xml.css">
</head>
<body>
    <div class="app-header">
        <div class="header-content">
            <a href="../login/menuPrintzipala.jsp" class="logo">
                <div class="logo-icon">←</div>
                <span>XML Sortu</span>
            </a>
        </div>
    </div>
    
    <div class="container mt-5">
        <div class="card xml-container">
            <h1>📄 XML Sortu</h1>
            <p class="mb-4">Aukeratu zer egin nahi duzun:</p>
            
            <div class="xml-actions">
                <a href="xmlBistaratu.jsp" class="btn btn-xml btn-view">
                    👁️ XML-a ikusi pantailan
                </a>
                <a href="xmlDeskargatu.jsp" class="btn btn-xml btn-download">
                    ⬇️ XML-a deskargatu
                </a>
            </div>
            
            <div class="alert alert-info mt-4">
                <div class="alert-icon">ℹ️</div>
                <div class="alert-content">
                    XML fitxategiak langileen datuak gordetzen ditu formatu estandarrean.
                </div>
            </div>
            
            <div class="text-center mt-4">
                <a href="../login/menuPrintzipala.jsp" class="btn btn-outline">
                    ← Menura itzuli
                </a>
            </div>
        </div>
    </div>
</body>
</html>