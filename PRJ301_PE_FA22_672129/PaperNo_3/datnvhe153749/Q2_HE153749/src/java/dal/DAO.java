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
import model.Paper;

/**
 *
 * @author dell
 */
public class DAO extends DBContext{
    public  List<Paper> getAll(){
        List<Paper> list = new ArrayList<>();
        String sql ="select * from Paper";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
              int id = rs.getInt("pid");
              String title = rs.getString("title");
              String date = rs.getString("published_date");
              int open = rs.getInt("open_access");
              list.add(new Paper(id, title, date, open));
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }  
//    public static void main(String[] args) {
//        DAO dao = new DAO();
//         List<Paper> list = new ArrayList<>();
//         list = dao.getAll();
//         for(Paper c: list){
//             System.out.println(c);
//         }
//    }
//  
}
