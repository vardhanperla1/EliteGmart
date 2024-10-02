package com.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/purchase")
public class PurchaseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userId = request.getParameter("userId");
        String productId = request.getParameter("productId");
        String referralCode = request.getParameter("referralCode");
        double purchaseAmount = Double.parseDouble(request.getParameter("purchaseAmount"));
        double discount = 0.0;
        int referrerPoints = 0;

        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;

        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom?useSSL=false", "root", "Vardhannani@1");
            con.setAutoCommit(false);

            // Check if referral code is valid
            if (referralCode != null && !referralCode.isEmpty()) {
                String referrerQuery = "SELECT id, points FROM users_data WHERE referral_code = ?";
                try (PreparedStatement referrerStmt = con.prepareStatement(referrerQuery)) {
                    referrerStmt.setString(1, referralCode);
                    ResultSet referrerRs = referrerStmt.executeQuery();

                    if (referrerRs.next()) {
                        int referrerId = referrerRs.getInt("id");
                        referrerPoints = referrerRs.getInt("points") + 10; // Add points to referrer
                        discount = purchaseAmount * 0.10; // 10% discount for the user
                        purchaseAmount -= discount; // Apply discount

                        // Update referrer's points
                        String updateReferrerPoints = "UPDATE users_data SET points = ? WHERE id = ?";
                        try (PreparedStatement updateStmt = con.prepareStatement(updateReferrerPoints)) {
                            updateStmt.setInt(1, referrerPoints);
                            updateStmt.setInt(2, referrerId);
                            updateStmt.executeUpdate();
                        }

                        // Log the referral
                        String insertReferral = "INSERT INTO referrals (user_id, referred_by) VALUES (?, ?)";
                        try (PreparedStatement referralStmt = con.prepareStatement(insertReferral)) {
                            referralStmt.setInt(1, Integer.parseInt(userId));
                            referralStmt.setString(2, referralCode);
                            referralStmt.executeUpdate();
                        }
                    }
                }
            }

            // Insert purchase record (optional)
            
            String purchaseQuery = "INSERT INTO purchases (user_id, product_id, amount) VALUES (?, ?, ?)";
            try (PreparedStatement purchaseStmt = con.prepareStatement(purchaseQuery)) {
                purchaseStmt.setInt(1, Integer.parseInt(userId));
                purchaseStmt.setInt(2, Integer.parseInt(productId));
                purchaseStmt.setDouble(3, purchaseAmount);
                purchaseStmt.executeUpdate();
            }
            

            con.commit();
            request.setAttribute("discount", discount);
            request.setAttribute("status", "success");
            session.setAttribute("purchaseAmount", purchaseAmount);
            dispatcher = request.getRequestDispatcher("purchase_result.jsp");

        } catch (Exception e) {
            if (con != null) {
                try {
                    con.rollback();
                } catch (SQLException se) {
                    se.printStackTrace();
                }
            }
            e.printStackTrace();
            request.setAttribute("status", "failed");
            dispatcher = request.getRequestDispatcher("purchase_result.jsp");
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        dispatcher.forward(request, response);
    }
}
