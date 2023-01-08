/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author dell
 */
public class ProductDAO extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;
    ArrayList<Product> list = new ArrayList<>();

    public ArrayList<Product> getAllProduct() {
        String sql = "select * from Product";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("idsp"),
                        rs.getString("nameproduct"),
                        rs.getFloat("price"),
                        rs.getInt("soluong"),
                        rs.getString("color"),
                        rs.getInt("loaisp")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void createProduct(Product pro) {
        String sql = "insert into Product values (?,?,?,?,?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, pro.getNameproduct());
            ps.setFloat(2, pro.getPrice());
            ps.setInt(3, pro.getSoluong());
            ps.setString(4, pro.getColor());
            ps.setInt(5, pro.getLoaisp());
            ps.execute();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteProductById(int id) {
        try {
            String sql = "delete from product where idsp = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editProduct(Product pro) {
        try {
            String spl = "UPDATE Product set nameproduct = ?,price=?,soluong=?,color=?,loaisp=? where idsp = ?";
            ps = connection.prepareStatement(spl);
            ps.setInt(6, pro.getIdsp());
            ps.setString(1, pro.getNameproduct());
            ps.setFloat(2, pro.getPrice());
            ps.setInt(3, pro.getSoluong());
            ps.setString(4, pro.getColor());
            ps.setInt(5, pro.getLoaisp());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
