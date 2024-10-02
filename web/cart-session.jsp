<%-- 
    Document   : cart-session
    Created on : 18-Jul-2024, 3:08:19 pm
    Author     : lenovo
--%>

<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, java.util.List, com.example.model.CartItem" %>

<%
    HttpSession userSession = request.getSession(false);

    
    List<CartItem> cartItems = (List<CartItem>) userSession.getAttribute("cartItems");
    if (cartItems == null) {
        cartItems = new ArrayList<>();
        userSession.setAttribute("cartItems", cartItems);
    }

    
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        List<CartItem> updatedCartItems = (List<CartItem>) request.getAttribute("cart");

        userSession.setAttribute("cartItems", updatedCartItems);

        response.setStatus(HttpServletResponse.SC_OK);
        return;
    }

    response.setContentType("application/json");
    out.print(new com.google.gson.Gson().toJson(cartItems));
%>

