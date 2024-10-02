/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.project.registration;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.tomcat.dbcp.dbcp2.PoolingConnection;

/**
 *
 * @author lenovo
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {


    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        RequestDispatcher dispatcher = null;

        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom?useSSL=false",
                        "root", "Vardhannani@1")) {

                    // Attempt to update password in 'users' table
                    boolean passwordUpdated = updatePassword(con, "users", newPassword, (String) session.getAttribute("email"));

                    // If not updated in 'users' table, try in 'vendors' table
                    if (!passwordUpdated) {
                        passwordUpdated = updatePassword(con, "vendors", newPassword, (String) session.getAttribute("email"));
                    }

                    if (passwordUpdated) {
                        request.setAttribute("status", "resetSuccess");
                    } else {
                        request.setAttribute("status", "resetFailed");
                    }

                    // Set the correct JSP page based on the current tab or default to "login.jsp"
                    String activeTab = (String) session.getAttribute("activeTab");
                    dispatcher = request.getRequestDispatcher((activeTab != null ? activeTab : "login") + ".jsp");

                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

        // Check if the dispatcher is not null before forwarding
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        } else {
            // Handle the case when the dispatcher is null (e.g., if there's an error updating the password)
            response.sendRedirect("login.jsp");
        }
    }

    private boolean updatePassword(Connection con, String tableName, String newPassword, String email) throws SQLException {
        String updateQuery = "UPDATE " + tableName + " SET password = ? WHERE email = ?";
        try (PreparedStatement pst = con.prepareStatement(updateQuery)) {
            pst.setString(1, newPassword);
            pst.setString(2, email);
            int rowCount = pst.executeUpdate();
            return rowCount > 0;
        }

    }


}
