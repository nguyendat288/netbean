/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Student;

/**
 *
 * @author dell
 */
public class StudentDAO extends DBContext{
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Student> getAllStudent(){
        List<Student> list = new ArrayList<Student>();
        String query = "select * from Student";
        try{
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Student(rs.getInt(1),
                rs.getString(2),
                rs.getInt(3),
                rs.getDate(4)));
            }                  
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    public void deleteStudentById(String id){
        String query ="delete from Student where id = ?";
        try{
        ps= connection.prepareStatement(query);
        ps.setString(1, id);
        ps.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    
    
    public static void main(String[] args) {
        StudentDAO deo = new StudentDAO();
        List<Student> list = deo.getAllStudent();
        for(Student o : list){
            System.out.println(o);
        }
               
    }
}
