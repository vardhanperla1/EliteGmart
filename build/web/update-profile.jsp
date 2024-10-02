<%-- 
    Document   : update-profile
    Created on : 10-Jun-2024, 11:13:08 am
    Author     : lenovo
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Retrieve the updated user information from the form
    
    String updatedEmail = request.getParameter("email");

    // Update the user's information in the database
    try {
        // Establish a database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom?useSSL=false", "root", "Vardhannani@1");

        // Prepare and execute the update query
        PreparedStatement stmt = conn.prepareStatement("UPDATE users SET email = ? WHERE id = ?");
        //stmt.setString(1, updatedName);
        stmt.setString(2, updatedEmail);
        stmt.setInt(3, (Integer) session.getAttribute("user_id")); // Assuming the user's ID is stored in the session
        int rowsUpdated = stmt.executeUpdate();

        if (rowsUpdated > 0) {
            // Provide a success notification
            session.setAttribute("success_message", "Profile updated successfully!");
        } else {
            // Provide an error notification
            session.setAttribute("error_message", "Failed to update profile.");
        }

        // Close the database connection
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        // Handle the database connection exception
        session.setAttribute("error_message", "An error occurred while updating the profile.");
        e.printStackTrace();
    }

    // Redirect the user back to the profile page
    response.sendRedirect("profile.jsp");
%>


