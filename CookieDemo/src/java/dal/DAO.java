/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.jsp.jstl.sql.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Admin;

/**
 *
 * @author dell
 */
public class DAO extends DBContext {

    public Admin check(String acc, String pass) {
        String sql = "select * from Admin where Username =? and Password=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, acc);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Admin(acc, pass, rs.getInt("role"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
      public boolean existUser(String acc) {
        String sql = "select * from Admin where Username =?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, acc);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }
    public void register(Admin a){
        String sql = "insert into Admin values (?,?,?)";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, a.getAccount());
            ps.setString(2, a.getPassword());
            ps.setInt(3, a.getRole());
            ps.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    public void change(Admin a ){
        String sql = "update Admin set password = ? where username = ?";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,a.getPassword());
            ps.setString(2,a.getAccount());
            ps.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
   
}
