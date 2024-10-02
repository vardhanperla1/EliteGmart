/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.models;

/**
 *
 * @author lenovo
 */
public class User {
    private int id;
    private String username;
    private String password;
    private String mobile;
    private String referralCode;
    private int points;

    // Constructors, Getters, and Setters
    public User(int id, String username, String password, String mobile, String referralCode, int points) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.mobile = mobile;
        this.referralCode = referralCode;
        this.points = points;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getMobile() { return mobile; }
    public void setMobile(String mobile) { this.mobile = mobile; }

    public String getReferralCode() { return referralCode; }
    public void setReferralCode(String referralCode) { this.referralCode = referralCode; }

    public int getPoints() { return points; }
    public void setPoints(int points) { this.points = points; }
}
