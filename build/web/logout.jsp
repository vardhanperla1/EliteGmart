<%-- 
    Document   : logout
    Created on : 06-Jun-2024, 12:55:05 pm
    Author     : lenovo
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    // Invalidate the current session
    session.invalidate();

    // Set cache control headers
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");

    // Redirect the user to the login page
    response.sendRedirect("login.jsp");
%>


