<%-- 
    Document   : cart-session
    Created on : 18-Jul-2024, 3:08:19 pm
    Author     : lenovo
--%>

<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, java.util.List, com.example.model.CartItem" %>

<%
    // Retrieve the user's session
    HttpSession userSession = request.getSession(false);

    // Get the cart items from the user's session
    List<CartItem> cartItems = (List<CartItem>) userSession.getAttribute("cartItems");
    if (cartItems == null) {
        cartItems = new ArrayList<>();
        userSession.setAttribute("cartItems", cartItems);
    }

    // Handle POST requests to save the cart items
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        // Get the cart data from the request body
        List<CartItem> updatedCartItems = (List<CartItem>) request.getAttribute("cart");

        // Update the cart items in the user's session
        userSession.setAttribute("cartItems", updatedCartItems);

        // Return a success response
        response.setStatus(HttpServletResponse.SC_OK);
        return;
    }

    // Convert the cart items to a JSON response
    response.setContentType("application/json");
    out.print(new com.google.gson.Gson().toJson(cartItems));
%>

