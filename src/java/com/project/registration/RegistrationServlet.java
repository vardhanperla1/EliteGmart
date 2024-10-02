package com.project.registration;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("username");
        String umobile = request.getParameter("number");
        String upwd = request.getParameter("pass");
        String reupwd = request.getParameter("re_pass");
        String referredBy = request.getParameter("referredBy");
        String referralCode = generateReferralCode();
        int points = 0;
        RequestDispatcher dispatcher = null;
        Connection con = null;

        if (uname == null || uname.equals("")) {
            request.setAttribute("status", "invalidEmail");
            dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return;
        }
        if (umobile == null || umobile.equals("")) {
            request.setAttribute("status", "invalidMobile");
            dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return;
        } else if (umobile.length() < 10) {
            request.setAttribute("status", "invalidMobileLength");
            dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return;
        }
        if (upwd == null || upwd.equals("")) {
            request.setAttribute("status", "invalidUpwd");
            dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return;
        } else if (!upwd.equals(reupwd)) {
            request.setAttribute("status", "invalidConfirmPassword");
            dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom?useSSL=false", "root", "Vardhannani@1");
            con.setAutoCommit(false);

            String insertUserQuery = "INSERT INTO users_data(uname, upwd, umobile, referral_code, points) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement pstmt = con.prepareStatement(insertUserQuery, PreparedStatement.RETURN_GENERATED_KEYS)) {
                pstmt.setString(1, uname);
                pstmt.setString(2, upwd);
                pstmt.setString(3, umobile);
                pstmt.setString(4, referralCode);
                pstmt.setInt(5, points);
                pstmt.executeUpdate();

                ResultSet rs = pstmt.getGeneratedKeys();
                rs.next();
                int userId = rs.getInt(1);

                if (referredBy != null && !referredBy.isEmpty()) {
                    String referrerQuery = "SELECT id, points FROM users_data WHERE referral_code = ?";
                    try (PreparedStatement referrerStmt = con.prepareStatement(referrerQuery)) {
                        referrerStmt.setString(1, referredBy);
                        ResultSet referrerRs = referrerStmt.executeQuery();

                        if (referrerRs.next()) {
                            int referrerId = referrerRs.getInt("id");
                            int referrerPoints = referrerRs.getInt("points") + 10;
                            points = 5;

                            String updateReferrerPoints = "UPDATE users_data SET points = ? WHERE id = ?";
                            try (PreparedStatement updateStmt = con.prepareStatement(updateReferrerPoints)) {
                                updateStmt.setInt(1, referrerPoints);
                                updateStmt.setInt(2, referrerId);
                                updateStmt.executeUpdate();
                            }

                            String insertReferral = "INSERT INTO referrals (user_id, referred_by) VALUES (?, ?)";
                            try (PreparedStatement referralStmt = con.prepareStatement(insertReferral)) {
                                referralStmt.setInt(1, userId);
                                referralStmt.setString(2, referredBy);
                                referralStmt.executeUpdate();
                            }
                        }
                    }
                }

                String updateUserPoints = "UPDATE users_data SET points = ? WHERE id = ?";
                try (PreparedStatement updatePointsStmt = con.prepareStatement(updateUserPoints)) {
                    updatePointsStmt.setInt(1, points);
                    updatePointsStmt.setInt(2, userId);
                    updatePointsStmt.executeUpdate();
                }

                con.commit();
                
                request.setAttribute("status", "success");
                request.setAttribute("referralCode", referralCode);
                request.setAttribute("points", points);
            } catch (SQLException e) {
                con.rollback();
                e.printStackTrace();
                request.setAttribute("status", "failed");
            }
            dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private String generateReferralCode() {
        return java.util.UUID.randomUUID().toString().substring(0, 8).toUpperCase();
    }
}
