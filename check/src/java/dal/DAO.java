/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author dell
 */
public class DAO extends DBContext{
    
     public Account check(String acc, String pass) {
        String sql = "select * from Account where acc = ? and pass = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, acc);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getString("acc"), rs.getString("pass"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
     public static void main(String[] args) {
        DAO dao = new DAO();
        Account a = dao.check("123","123");
         System.out.println(a);
    }
}
