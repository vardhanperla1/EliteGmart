/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.project.controller;

import com.project.DAO.CartDAO;
import com.google.gson.JsonSyntaxException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;
import com.google.gson.Gson;



import com.project.models.CartItem;
import com.project.models.User;

/**
 *
 * @author lenovo
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();
    User user = (User) session.getAttribute("user");
    System.out.println("GET request received");

    List<CartItem> cart = new ArrayList<>();
    try {
        if (user != null) {
            System.out.println("Fetching cart for user ID: " + user.getId());
            cart = CartDAO.getCartByUserId(user.getId());
        }
        Gson gson = new Gson();
        String cartJson = gson.toJson(cart);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.setStatus(HttpServletResponse.SC_OK);
        response.getWriter().write(cartJson);
    } catch (Exception e) {
        e.printStackTrace();
        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to fetch cart data");
    }
}



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "User not logged in");
            return;
        }

        try {
            // Read the cart data from the request
            String cartJson = request.getReader().lines().collect(Collectors.joining());
            Gson gson = new Gson();
            CartItem[] cartItems = gson.fromJson(cartJson, CartItem[].class);

            // Save the cart to the database
            CartDAO.saveCart(user.getId(), Arrays.asList(cartItems));

            response.setStatus(HttpServletResponse.SC_OK);  // Set the status to 200 OK
        } catch (JsonSyntaxException e) {
            // Handle JSON parsing errors
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid JSON format");
        } catch (Exception e) {
            // Handle other exceptions
            e.printStackTrace(); // Log the exception
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to save cart data");
        }
    }
}
