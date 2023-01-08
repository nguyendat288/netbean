/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Author;
import model.Paper;
import model.Paper_Author;

/**
 *
 * @author dell
 */
public class DAO extends DBContext{
       public Account check(String acc, String pass) {
        String sql = "select * from [User] where username =? and password=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, acc);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(acc, pass);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
       public Paper getPaperById(int id){
         String sql ="select * from Paper where pid = ?";
         try{
             PreparedStatement ps = connection.prepareStatement(sql);
             ps.setInt(1, id);
              ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Paper(rs.getInt("pid"),rs.getString("title"),rs.getString("published_date"),rs.getInt("open_access"));
            }
         }catch(SQLException e){
             System.out.println(e);
         }
         return null;
       }
       public Author getAuthorById(int id){
         String sql ="select * from Author where auid = ?";
         try{
             PreparedStatement ps = connection.prepareStatement(sql);
             ps.setInt(1, id);
              ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Author(rs.getInt("auid"),rs.getString("auname"));
            }
         }catch(SQLException e){
             System.out.println(e);
         }
         return null;
       }
    public List<Author> getAllAuthor(){
        List<Author> list = new ArrayList<>();
        String sql ="select * from Author";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Author(rs.getInt("auid"), rs.getString("auname")));
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    public List<Paper_Author> getPaperAuthorById(int id){
        List<Paper_Author> list = new ArrayList<>();
        String sql = "select * from Paper_Author where pid = ?";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int pid = rs.getInt("pid");
                Paper p = getPaperById(pid);
                int auid = rs.getInt("auid");
                Author a = getAuthorById(auid);
                int cor = rs.getInt("corresponding_author");
                list.add(new Paper_Author(p,a,cor));
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
       
       
       
       
       
       public static void main(String[] args) {
        DAO dao = new DAO();
        Paper p = dao.getPaperById(1);
           System.out.println(p);
        List<Paper_Author> list = new ArrayList<>();
        list = (List<Paper_Author>) dao.getPaperAuthorById(1);
        for(Paper_Author a : list){
            System.out.println(a);
        }
        Account acc = dao.check("mra", "mra");
           System.out.println(acc);
    }
}
