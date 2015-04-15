/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author c0649005
 */
public class LoginChecking {
    
      public static boolean validate(int Id, String pass) {          
        boolean status = false;  
        Connection conn = null;  
        PreparedStatement pst = null;  
        ResultSet rs = null;  
  
        String jdbc = "jdbc:mysql://localhost/college";  
      
        String driver = "com.mysql.jdbc.Driver";  
        String user = "root";  
        String password = "password";  
        try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(jdbc , user, password);  
  
            pst = conn  
                    .prepareStatement("select * from student where studentId=? and password=?");  
            pst.setInt(1, Id);  
            pst.setString(2, pass);  
  
            rs = pst.executeQuery();  
            status = rs.next();  
  
        } catch (Exception e) {  
            System.out.println(e);  
        } finally {  
            if (conn != null) {  
                try {  
                    conn.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (pst != null) {  
                try {  
                    pst.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (rs != null) {  
                try {  
                    rs.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
        }  
        return status;  
    }  

  
}  