/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Daminiya
 */
public class dBConnection {
    private static final String URL= "jdbc:mysql://localhost:3306/libraryservlet?characterEncoding=UTF-8&useSSL=false";
    private static final String USER = "root";
    private static final String PASSWORD = "manager";
    private static final String MYSQL_JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    
     public static Connection getdB() {
          Connection con = null;
        try { 
            Class.forName(MYSQL_JDBC_DRIVER);
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(dBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
     }

    public Connection Conn() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
