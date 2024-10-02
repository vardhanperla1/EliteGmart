<%-- 
    Document   : profile
    Created on : 10-Jun-2024, 11:10:17 am
    Author     : lenovo
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Retrieve the user's information from the session or database
    String userName = (String) session.getAttribute("name");
    String userEmail = (String) session.getAttribute("email");

    // Retrieve the success or error message from the session
    String successMessage = (String) session.getAttribute("success_message");
    String errorMessage = (String) session.getAttribute("error_message");

    // Remove the success or error message from the session
    session.removeAttribute("success_message");
    session.removeAttribute("error_message");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
</head>
<body>
    <h1>User Profile</h1>

    <% if (successMessage != null) { %>
        <div class="success-message"><%= successMessage %></div>
    <% } else if (errorMessage != null) { %>
        <div class="error-message"><%= errorMessage %></div>
    <% } %>

    <form action="update-profile.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= userName %>" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%= userEmail %>" required>

        <!-- Add other input fields for user information -->

        <button type="submit">Update Profile</button>
    </form>
</body>
</html>
