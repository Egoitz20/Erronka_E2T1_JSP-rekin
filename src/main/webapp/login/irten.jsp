<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
/**
 * Erabiltzailearen saioa ixten du eta logina berri bideratzen du.
 * 
 * @action session.invalidate()
 * @redirect index.jsp
 */
    session.invalidate();
    response.sendRedirect("../index.jsp");
%>