/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;

/**
 *
 * @author dell
 */
public class CategoryDAO extends DBContext {

    public ArrayList<Category> getAll() {
        ArrayList list = new ArrayList();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[describe]\n"
                + "  FROM [Trading2021].[dbo].[Categories]";
        try {
             PreparedStatement st = connection.prepareStatement(sql);
             ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Category c = new Category();
                 c.setId(rs.getInt("id"));
                 c.setName(rs.getString("name"));
                 c.setDescribe(rs.getString("describe"));
                 list.add(c);
             }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        ArrayList<Category> list = dao.getAll();
        System.out.println(list.get(0).getName());
    }
}
