/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package rimzShop;

import java.sql.*;

/**
 *
 * @author c0647708
 */
public class DAOConnection {
    
    static Connection con;
    static String username = null;
    static String password = null;

 
    public static Connection sqlconnection(){
       try{
           String dbUrl = "jdbc:mysql://localhost:3306/rimzshop_db";
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           con=DriverManager.getConnection(dbUrl,"root","");              
           System.out.println("Connection established for SQL");
       }catch(Exception e){
           System.out.println("Database connection exception="+e);
       }
       return con;    
    
} 
    
}
