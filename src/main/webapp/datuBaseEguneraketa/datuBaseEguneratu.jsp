<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
/**
 * Datu-basearen eguneraketa eragiketetarako menua.
 * Egitura aldatzeko funtzionalitateetara sarbidea ematen du.
 */

String mezua = request.getParameter("mezua");
String errorea = request.getParameter("errorea");
%>
<!DOCTYPE html>
<html>
<head>
<title>Datu-basea Eguneratu</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/global.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/datuBase.css">
</head>
<body>
    <div class="app-header">
        <div class="header-content">
            <a href="../login/menuPrintzipala.jsp" class="logo">
                <div class="logo-icon">←</div>
                <span>Datu-basea Eguneratu</span>
            </a>
        </div>
    </div>
    
    <div class="container mt-5">
        <div class="card options-container">
            <h1>🔄 Datu-basea Eguneratu</h1>
            <p class="mb-4">Aukeratu ekintza bat:</p>
            
            <div class="warning-note">
                ⚠️ <strong>Kontuz:</strong> Ekintza hauek datu-basearen egitura alda dezakete.
            </div>
            
            <div class="options-grid">
                <div class="option-card">
                    <a href="exekutatuEremuaGehitu.jsp">
                        <span class="option-number">1</span>
                        Eremua gehitu
                    </a>
                    <p class="mt-2 text-gray">SOLDATA eremua gehitu LANGILE taulan</p>
                </div>
                
                <div class="option-card">
                    <a href="exekutatuTaulaEguneratu.jsp">
                        <span class="option-number">2</span>
                        Taula eguneratu
                    </a>
                    <p class="mt-2 text-gray">Langileen soldatak eguneratu</p>
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