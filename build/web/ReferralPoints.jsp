<%-- 
    Document   : ReferralPoints
    Created on : 16-Jul-2024, 12:46:20 pm
    Author     : lenovo
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Referral Points</title>
    <script>
        function fetchPoints() {
            const referralCode = document.getElementById("referralCode").value;
            fetch(/points?referralCode=${referralCode})
                .then(response => response.json())
                .then(data => {
                    document.getElementById("points").innerText = "Your Points: " + data.points;
                })
                .catch(error => {
                    document.getElementById("points").innerText = "Error fetching points.";
                });
        }
    </script>
</head>
<body>
    <h2>Check Your Referral Points</h2>
    <label for="referralCode">Referral Code:</label><br>
    <input type="text" id="referralCode" name="referralCode" required><br><br>
    <button onclick="fetchPoints()">Get Points</button>
    <p id="points"></p>
</body>
</html>
