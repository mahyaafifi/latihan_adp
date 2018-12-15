/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author asus
 */
public class koneksi {
public Connection openConnection(){
    Connection con;
    try
    {
        Class.forName("com.mysql.jdbc.driver");
        String url = "jdbc:mysql://localhost:3306/latihan_adp";
        con = DriverManager.getConnection(url, "root", "");
        return con;
    }
    catch (Exception e){
        System.err.println(e);
        return null;
    }
}   
}
