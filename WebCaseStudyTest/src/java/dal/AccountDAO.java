/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;
import model.Role;

/**
 *
 * @author dell
 */
public class AccountDAO extends DBContext {

    public Account getAccountById(int id) {
        String sql = "select * from Account where idAcc = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int idAcc = rs.getInt("idAcc");
                String acc = rs.getString("account");
                String pass = rs.getString("password");
                String firstName = rs.getString("firstName");
                String lastName = rs.getString("lastName");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                int idr = rs.getInt("role_id");
                Role role = getRoleById(idr);
                return new Account(idAcc, acc, pass, firstName, lastName, email, phone, address, role);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Account> getAllAccount() {
        ArrayList<Account> list = new ArrayList<>();
        String sql = "select * from Account where role_id != 1";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idAcc");
                String acc = rs.getString("account");
                String pass = rs.getString("password");
                String firstName = rs.getString("firstName");
                String lastName = rs.getString("lastName");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                Role role = getRoleById(2);
                list.add(new Account(id, acc, pass, firstName, lastName, email, phone, address, role));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void deleteAccountById(int id) {
        String sql = "delete Account where idAcc = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public Role getRoleById(int id) {
        String sql = "select * from Role where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Role(rs.getInt("id"), rs.getString("name"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        Account acc = dao.check("dat12345", "dat123");
        System.out.println(acc);
//        System.out.println(acc);
//       Role role = dao.getRoleById(2);
//        System.out.println(role);
//        ArrayList<Account> list = new ArrayList<>();
//        list = dao.getAllAccount();
//        for (Account a : list) {
//            System.out.println(a);
//        }
    }

    public ArrayList<Role> listRole() {
        String sql = "select * from Role";
        ArrayList<Role> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Role(rs.getInt("id"), rs.getString("name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int getIDAcc() {
        String sql = " SELECT TOP 1 a.idAcc \n"
                + " FROM Account  a \n"
                + " group by a.idAcc\n"
                + " ORDER BY a.idAcc desc";
        int id = 1;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("idAcc");
                return id;
            }
        } catch (SQLException e) {
            System.out.println(e);

        }
        return id;
    }

    public Account check(String acc, String pass) {
        String sql = "select a.idAcc,a.account,a.password,a.firstName,a.lastName,"
                + " a.email,a.phone,a.address,r.name as nameRole,r.id as roleId from Account a "
                + " inner join Role r on a.role_id=r.id\n"
                + " where account = ? and password= ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, acc);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idAcc");
                String firstName = rs.getString("firstName");
                String lastName = rs.getString("lastName");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                Role role = new Role(rs.getInt("roleId"), rs.getString("nameRole"));
                return new Account(id, acc, pass, firstName, lastName, email, phone, address, role);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean existUser(String acc) {
        String sql = "select * from Account where account =?";

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

    public void register(Account a) {
        String sql = "insert into Account(account,password,firstName,lastName,email,phone,address)\n"
                + "values (?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, a.getAccount());
            ps.setString(2, a.getPassword());
            ps.setString(3, a.getFisrtName());
            ps.setString(4, a.getLastName());
            ps.setString(5, a.getEmail());
            ps.setString(6, a.getPhone());
            ps.setString(7, a.getAddress());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
//

    public void change(String acc, String pass) {
        String sql = "update Account set password = ? where account = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, pass);
            ps.setString(2, acc);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public boolean checkPhone(String phone) {
        String sql = "select * from Account where phone =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, phone);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public boolean checkEmail(String email) {
        String sql = "select * from Account where email =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }
}
