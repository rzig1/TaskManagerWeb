<%-- 
    Document   : logout.jsp
    Created on : Dec 9, 2024, 12:14:37 AM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    // Invalidate the session to remove user data
    session.invalidate();
    
    // Redirect to login page
    response.sendRedirect("login.jsp");
%>

