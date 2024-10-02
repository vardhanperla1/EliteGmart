/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.models;
/**
 *
 * @author lenovo
 */
public class CartItem {
    private int productId;
    private String title;
    private double price;
    private String img;
    private int quantity;

    public CartItem(int productId, String title, double price, String img, int quantity) {
        this.productId = productId;
        this.title = title;
        this.price = price;
        this.img = img;
        this.quantity = quantity;
    }

    // Getters and Setters
    public int getProductId() { return productId; }
    public void setProductId(int productId) { this.productId = productId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public String getImg() { return img; }
    public void setImg(String img) { this.img = img; }

    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    
//    @Override
//    public String toString()
//    {
//        return "CartItem{" + ", product=" + productId + ", Title=" + title + ", Price=" + price + ", Img=" + img + ", Quantity=" + quantity + '}';
//    }
}

