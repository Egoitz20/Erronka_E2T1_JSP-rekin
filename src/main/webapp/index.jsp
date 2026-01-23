<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/**
 * Sistemako login orri nagusia.
 * Sartzeko saiakera-kontrola barne du (gehienez 4 saiakera).
 * 
 * @sessionAttribute loginSaiakerak Login saiakera-kontagailua
 * @requestParameter errorea Erakutsi beharreko errore mezua
 */
 
// Saiakera-kontagailua hasieratu edo berreskuratu
Integer loginSaiakerak = (Integer) session.getAttribute("loginSaiakerak");
	if (loginSaiakerak == null) {
		loginSaiakerak = 4;
		session.setAttribute("loginSaiakerak", loginSaiakerak);
	}

String errorea = (String) request.getParameter("errorea");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/global.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/index.css">
<style>
    .login-wrapper {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }
    
    .login-card {
        width: 100%;
        max-width: 450px;
    }
</style>
</head>
<body>
    <div class="login-wrapper">
        <div class="card login-card fade-in">
            <h1 class="text-center">GAMESTOP APLIKAZIOA</h1>
            
            <% if (errorea != null) { %>
                <div class="alert alert-error">
                    <div class="alert-icon">⚠️</div>
                    <div class="alert-content">
                        <%= errorea %>
                        <% if (loginSaiakerak > 0) { %>
                            <div class="mt-1">
                                <small>Saiakerak geratzen: <strong><%= loginSaiakerak %></strong></small>
                            </div>
                        <% } %>
                    </div>
                </div>
            <% } %>
            
            <form method="post" action="login/prozesatuLogin.jsp" class="mt-4">
                <div class="form-group">
                    <label class="form-label">Erabiltzailea:</label>
                    <input type="text" name="erabiltzailea" class="form-control" required>
                </div>
                
                <div class="form-group">
                    <label class="form-label">Pasahitza:</label>
                    <input type="password" name="pasahitza" class="form-control" required>
                </div>
                
                <button type="submit" class="btn btn-primary w-100 mt-3">
                    Sartu sistema
                </button>
            </form>
        </div>
    </div>
</body>

</body>
</html>