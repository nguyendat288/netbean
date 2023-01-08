/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

public class LoginDAO extends DBContext{
      public Account check(String acc, String pass) {
        String sql = "select * from Account where username =? and password=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, acc);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(acc, pass, rs.getString("displayname"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
       public static void main(String[] args) {
        LoginDAO dao = new LoginDAO();
        Account acc = dao.check("mra", "mra");
         System.out.println(acc);
    }
}
