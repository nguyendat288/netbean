/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Cart;
import model.Item;
import model.Order;
import model.OrderDetail;
import model.Product;

/**
 *
 * @author dell
 */
public class OrderDAO extends DBContext {

    AccountDAO dao = new AccountDAO();

    ProductDAO pro = new ProductDAO();

    public void addOrder(Account acc, Cart cart) {
        LocalDate curDate = java.time.LocalDate.now();     
        String date = curDate.toString();
//        String date = "2022-12-06";
        try {
            String sql = "insert into [Orders] values (?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, acc.getId());
            ps.setFloat(2, cart.getTotalMoney());
            ps.setString(3, date);
            ps.setInt(4, 1);
            ps.executeUpdate();
            String sql1 = "select top 1 idOrder from [Orders] order by idOrder desc";
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ResultSet rs = ps1.executeQuery();
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into OrderDetail(idOrder,idProduct,price,slg) values (?,?,?,?)";
                    PreparedStatement ps2 = connection.prepareStatement(sql2);
                    ps2.setInt(1, oid);
                    ps2.setInt(2, i.getProduct().getId());
                    ps2.setDouble(3, i.getPrice());
                    ps2.setInt(4, i.getQuantity());
                    ps2.executeUpdate();
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    

    public List<OrderDetail> getOrderDetailByIdOrder(int idOrder) {
        List<OrderDetail> list = new ArrayList<>();
        String sql = "select * from OrderDetail where idOrder = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, idOrder);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idD = rs.getInt("idOrderDetail");
                int idO = rs.getInt("idOrder");
                Order or = getOrderById(idO);
                int idP = rs.getInt("idProduct");
                Product p = pro.getProductById(idP);
                float price = rs.getFloat("price");
                int slg = rs.getInt("slg");
                list.add(new OrderDetail(idD, or, p, price, slg));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Order> getOrderByStatus(int id) {
        List<Order> list = new ArrayList<>();
        String sql = "select * from Orders where status = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idO = rs.getInt("idOrder");
                int idAcc = rs.getInt("idAcc");
                Account acc = dao.getAccountById(idAcc);
                float price = rs.getFloat("totalMoney");
                Date date = rs.getDate("dateOrder");
                int status = rs.getInt("status");
                list.add(new Order(idO, acc, price, date, status));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public List<Order> getOrderByMonthAndStatus() {
        List<Order> list = new ArrayList<>();
        String sql = " select * from Orders  where MONTH(dateOrder) = MONTH(getDate()) and status = 3";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idO = rs.getInt("idOrder");
                int idAcc = rs.getInt("idAcc");
                Account acc = dao.getAccountById(idAcc);
                float price = rs.getFloat("totalMoney");
                Date date = rs.getDate("dateOrder");
                int status = rs.getInt("status");
                list.add(new Order(idO, acc, price, date, status));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Order> getOrderByIdAcc(int idAc) {
        List<Order> list = new ArrayList<>();
        String sql = "select * from Orders where idAcc = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, idAc);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idO = rs.getInt("idOrder");
                int idAcc = rs.getInt("idAcc");
                Account acc = dao.getAccountById(idAcc);
                float price = rs.getFloat("totalMoney");
                Date date = rs.getDate("dateOrder");
                int status = rs.getInt("status");
                list.add(new Order(idO, acc, price, date, status));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Order getOrderById(int id) {
        String sql = "select * from Orders where idOrder = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            int idO = rs.getInt("idOrder");
            int idAcc = rs.getInt("idAcc");
            Account acc = dao.getAccountById(idAcc);
            float price = rs.getFloat("totalMoney");
            Date date = rs.getDate("dateOrder");
            int status = rs.getInt("status");
            return new Order(idO, acc, price, date, status);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void deleteOrder(int idO) {
        String sql = "delete from OrderDetail where idOrder = " + idO + ";" + "delete from Orders where idOrder = " + idO;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void updateStatus(int idO, int status) {
        String sql = "update Orders set status = ? where idOrder = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, status);
            ps.setInt(2, idO);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
     
        OrderDAO dao = new OrderDAO();
        List<Order> list = new ArrayList<>();
        list=dao.getOrderByMonthAndStatus();
        
        dao.updateStatus(4, 2);
//        dao.deleteOrder(3);
//        list = dao.getOrderByIdAcc(4);
        for (Order o : list) {
            System.out.println(o);
        }
    }

}
