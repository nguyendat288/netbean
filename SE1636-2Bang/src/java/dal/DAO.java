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
import model.Department;
import model.Employee;

/**
 *
 * @author dell
 */
public class DAO extends DBContext{
    
   public List<Department> getDepartment(){
       List<Department> list = new ArrayList<>();
       try{
           String sql ="select * from Department";
           PreparedStatement ps = connection.prepareStatement(sql);
           ResultSet rs = ps.executeQuery();
           while(rs.next()){
               list.add(new Department(rs.getInt("id"),rs.getString("name")));
           }
       }catch(SQLException e){
           System.out.println(e);
       }
       return list;
   }
   public List<Employee> getEmps(int did){
       List<Employee> list = new ArrayList<>();
       try{
           String sql = "select e.id , e.name,e.dob,e.gender,d.id as did, d.name as dname from Employee e inner join Department d on e.did=d.id";
           if(did>0){
               sql += " where did = "+did;
           }    
           PreparedStatement ps = connection.prepareStatement(sql);
           ResultSet rs = ps.executeQuery();
           while(rs.next()){
               Employee e = new Employee();
               e.setId(rs.getInt("id"));
               e.setName(rs.getString("name"));
               e.setDob(rs.getString("dob"));
               e.setGender(rs.getBoolean("gender"));
               Department d= new Department(rs.getInt("did"), rs.getString("dname"));
               e.setDepartment(d);
               list.add(e);
           }
       }catch(SQLException e){
           System.out.println(e);
       }      
       return list;
   }
   
    public static void main(String[] args) {
        DAO a = new DAO();
        List<Employee> list = a.getEmps(1);
        for(Employee s : list){
            System.out.println(s);
        }
    }
}
