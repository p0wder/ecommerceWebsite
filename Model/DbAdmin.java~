/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//package Model;


import com.mysql.jdbc.Statement;
import java.net.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

// This class sets up the database
/**
 *
 * @author Scott C Gramig
 */
public class DbAdmin {
    private static String dbURL = "jdbc:mysql://localhost:3306/productdb";
    //private static String schemaName = "productdb";
    private static String dbUsername = "newuser";
    private static String dbPassword = "password";
    private static Connection connection;

    
    public DbAdmin() throws SQLException {
        try {
            // load the DB driver
            Class.forName("com.mysql.jdbc.Driver");
            // get a DB connection
            connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        } catch (ClassNotFoundException ex) {
            System.out.println("ERROR: Driver not found");
            connection = null;

        } catch (SQLException ex) {
            System.out.println("ERROR: Could not create DB connection");
        }

    }

    public static Statement getNewStatement() {
        Statement statement;
        try {
            if (connection == null) {
                new DbAdmin();
            }
            /* Creating a statement object that we can use for running
             * SQL statements commands against the database.*/
            statement = (Statement) connection.createStatement();
        } catch (Exception e) {
            System.out.println("ERROR: Could not create SQL statement object: " + e);
            statement = null;
        }
        return statement;
    }

    public static Connection getConnection() throws SQLException {
        if (connection == null) {
            new DbAdmin();
        }
        return connection;
    }

    public static void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(DbAdmin.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

}
