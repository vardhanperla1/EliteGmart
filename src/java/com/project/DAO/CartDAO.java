package com.project.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.project.models.CartItem;
import java.util.ArrayList;
import java.util.List;
import com.project.utils.Database;

public class CartDAO {

    // Fetch the cart items for a specific user
    public static List<CartItem> getCartByUserId(int userId) {
        List<CartItem> cart = new ArrayList<>();
        String query = "SELECT * FROM cart WHERE user_id = ?";
        
        try (Connection connection = Database.getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {
             
            ps.setInt(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    cart.add(new CartItem(
                        rs.getInt("product_id"),
                        rs.getString("title"),
                        rs.getDouble("price"),
                        rs.getString("img"),
                        rs.getInt("quantity")
                    ));
                }
            }
        } catch (SQLException e) {
            System.err.println("Error fetching cart for user ID " + userId + ": " + e.getMessage());
            e.printStackTrace();
        }
        
        return cart;
    }

    // Save or update the cart items for a specific user
    public static void saveCart(int userId, List<CartItem> cartItems) {
        String deleteQuery = "DELETE FROM cart WHERE user_id = ?";
        String insertOrUpdateQuery = "INSERT INTO cart (user_id, product_id, title, price, img, quantity) " +
                                      "VALUES (?, ?, ?, ?, ?, ?) " +
                                      "ON DUPLICATE KEY UPDATE quantity = quantity + VALUES(quantity)";

        Connection connection = null;  // Declare connection here
        try {
            connection = Database.getConnection();  // Initialize connection
            connection.setAutoCommit(false);
            System.out.println("Connected to the database, preparing to save cart for user ID: " + userId);

            // Delete existing cart items for the user (optional)
            try (PreparedStatement ps = connection.prepareStatement(deleteQuery)) {
                ps.setInt(1, userId);
                ps.executeUpdate();
            }

            // Insert or update cart items
            try (PreparedStatement ps = connection.prepareStatement(insertOrUpdateQuery)) {
                for (CartItem item : cartItems) {
                    ps.setInt(1, userId);
                    ps.setInt(2, item.getProductId());
                    ps.setString(3, item.getTitle());
                    ps.setDouble(4, item.getPrice());
                    ps.setString(5, item.getImg());
                    ps.setInt(6, item.getQuantity());
                    ps.addBatch();
                    System.out.println("Prepared to insert/update item: " + item);
                }
                int[] result = ps.executeBatch();
                System.out.println("Processed " + result.length + " items into the cart.");
            }

            connection.commit();
            System.out.println("Transaction committed successfully for user ID: " + userId);
        } catch (SQLException e) {
            System.err.println("Error saving cart for user ID " + userId + ": " + e.getMessage());
            e.printStackTrace();
            try {
                if (connection != null) {
                    connection.rollback();  // Rollback if an error occurs
                    System.out.println("Transaction rolled back for user ID: " + userId);
                }
            } catch (SQLException rollbackEx) {
                System.err.println("Error during rollback: " + rollbackEx.getMessage());
                rollbackEx.printStackTrace();
            }
        } finally {
            // Close the connection if it's not null
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException closeEx) {
                    System.err.println("Error closing connection: " + closeEx.getMessage());
                    closeEx.printStackTrace();
                }
            }
        }
    }
}
