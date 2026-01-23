<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
/**
 * Sistemako erabiltzaile berriak gehitzeko formularioa.
 * Pasahitzen baliozkotzea barne du (baieztapena).
 * 
 * @sessionAttribute erabiltzailea Uneko erabiltzailea
 * @requestParameter mezua Arrakasta mezua
 * @requestParameter errorea Errore mezua
 */ 

	String erabiltzailea = (String) session.getAttribute("erabiltzailea");
    String mezua = request.getParameter("mezua");
    String errorea = request.getParameter("errorea");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Erabiltzailea Gehitu</title>
   <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/global.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/formulario.css">
</head>
<body>
    <div class="app-header">
        <div class="header-content">
            <a href="../login/menuPrintzipala.jsp" class="logo">
                <div class="logo-icon">←</div>
                <span>Erabiltzailea Gehitu</span>
            </a>
        </div>
    </div>
    
    <div class="container mt-5">
        <div class="card form-container">
            <h1>👤 Erabiltzailea Gehitu</h1>
            
            <% if (mezua != null) { %>
                <div class="alert alert-success">
                    <div class="alert-icon">✅</div>
                    <div class="alert-content"><%= mezua %></div>
                </div>
            <% } %>
            
            <% if (errorea != null) { %>
                <div class="alert alert-error">
                    <div class="alert-icon">❌</div>
                    <div class="alert-content"><%= errorea %></div>
                </div>
            <% } %>
            
            <form action="prozesatuErabiltzaileGehiketa.jsp" method="post" class="mt-4">
                <div class="form-group">
                    <label class="form-label">Sartu erabiltzaile berriaren izena:</label>
                    <input type="text" name="erabiltzaileBerria" class="form-control" required 
                           placeholder="Erabiltzaile izena...">
                </div>
                
                <div class="form-group">
                    <label class="form-label">Sartu sortzeko erabiltzailearen pasahitza:</label>
                    <input type="password" name="pasahitzaSortu" class="form-control" required 
                           placeholder="Pasahitza...">
                </div>
                
                <div class="form-group">
                    <label class="form-label">Berridatzi pasahitza:</label>
                    <input type="password" name="pasahitzaKonfirmazioa" class="form-control" required 
                           placeholder="Berridatzi pasahitza...">
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">
                        <span class="btn-icon">➕</span>
                        Gehitu erabiltzailea
                    </button>
                    <a href="../login/menuPrintzipala.jsp" class="btn btn-outline">
                        ← Utzi
                    </a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>