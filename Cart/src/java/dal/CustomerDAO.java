/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Customer;

/**
 *
 * @author dell
 */
public class CustomerDAO extends DBContext {

    public Customer getAccount(String acc, String pass) {
        String sql = "select* from Customer where username = ? and password = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, acc);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
    public static void main(String[] args) {
        CustomerDAO dao = new CustomerDAO();
        Customer c = dao.getAccount("a", "123");
        System.out.println(c);
    }
}
