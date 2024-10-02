package com.project.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/points")
public class PointsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String referralCode = request.getParameter("referralCode");
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom?useSSL=false", "root", "Vardhannani@1")) {
            String query = "SELECT points FROM users_data WHERE referral_code = ?";
            try (PreparedStatement pstmt = conn.prepareStatement(query)) {
                pstmt.setString(1, referralCode);
                ResultSet rs = pstmt.executeQuery();
                
                if (rs.next()) {
                    int points = rs.getInt("points");
                    response.setContentType("application/json");
                    response.getWriter().write("{\"points\": " + points + "}");
                } else {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND, "User not found.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database connection failed.");
        }
    }
}
