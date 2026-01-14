<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Invalidar sesión
    session.invalidate();
    response.sendRedirect("login.jsp");
%>