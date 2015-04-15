/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import database.Credentials;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ashish
 */
public class loginAdmin {
    
    private String username;
    private String password;

    public loginAdmin() {
    }

    public loginAdmin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
     public static boolean checkUser(String username, String pass) {
        boolean check = false;
        try {

            Connection conn = Credentials.getConnection();

            PreparedStatement pstmt = conn.prepareStatement("Select * FROM admin WHERE username = ? AND password = ?");
            pstmt.setString(1, username);
            pstmt.setString(2, pass);
            ResultSet rs = pstmt.executeQuery();
            check = rs.next();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(loginAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;

    }
    
}
