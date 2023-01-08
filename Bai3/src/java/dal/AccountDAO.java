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
import model.Group;

/**
 *
 * @author dell
 */
public class AccountDAO extends DBContext {

    public ArrayList<Group> getAll() {
        ArrayList<Group> list = new ArrayList<>();
        String sql = "select groupid,name from [Group]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Group(rs.getInt("groupid"),rs.getString("name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public void insert(Account a ){
        String sql ="insert into Account (accountid,password) values (?,?)";
        try{
         PreparedStatement ps = connection.prepareStatement(sql);
         ps.setString(1,a.getUser());
         ps.setString(2,a.getPass());
         ps.executeUpdate();
         List<Group> list = a.getGroups();
         for(Group c : list){
             String sql1 = "insert into Account_Group (groupid,accountid) values (?,?)";
              PreparedStatement ps1 = connection.prepareStatement(sql1);
         ps1.setInt(1,c.getGroupid());
         ps1.setString(2,a.getUser());
          ps1.executeUpdate();
         }
        }catch(SQLException e){
            System.out.println(e);
        }
    }


//    public static void main(String[] args) {
//        AccountDAO dao = new AccountDAO();
//        ArrayList<Group> list = dao.getAll();
//        for(Group c : list){
//            System.out.println(c);
//        }
//    }
}
