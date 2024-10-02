/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.utils;

/**
 *
 * @author lenovo
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {
    
    public static Connection getConnection()
    {
        Connection conn;
        try
        {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "Vardhannani@1");
            return conn;
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public static void main(String[] args)
    {
        System.out.println(new Database().getConnection());
    }
}

