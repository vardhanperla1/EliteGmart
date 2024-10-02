<%-- 
    Document   : purchase_result
    Created on : 18-Jul-2024, 5:29:21 pm
    Author     : lenovo
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Purchase Result</title>
</head>
<body>.
    <h1>Purchase Result</h1>
    <%
        String status = (String) request.getAttribute("status");
        if ("success".equals(status)) {
            double discount = (Double) request.getAttribute("discount");
            double purchaseAmount = (Double) session.getAttribute("purchaseAmount");
    %>
            <p>Purchase successful!</p>
            <p>Discount applied: <%= discount %></p>
            <p>Total amount after discount: <%= purchaseAmount %></p>
    <%
        } else {
    %>
            <p>Purchase failed. Please try again.</p>
    <%
        }
    %>
    <a href="index.jsp">Go back to home page</a>
</body>
</html>

