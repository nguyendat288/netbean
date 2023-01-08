/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.OrderDAO;
import java.util.List;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author dell
 */
public class OrderService {
    OrderDAO dao = new OrderDAO();
    public List<Order> getOrderByStatus(int status ){
        return dao.getOrderByStatus(status);
    }
   public List<Order> getOrderByIdAcc(int ida ){
        return dao.getOrderByIdAcc(ida);
    }
   public List<Order> getOrderByMonthAndStatus( ){
        return dao.getOrderByMonthAndStatus();
    }
   public Order getOrderById(int ida ){
        return dao.getOrderById(ida);
    }
   
   public List<OrderDetail> getOrderDetailByIdOrder(int ida ){
        return dao.getOrderDetailByIdOrder(ida);
    }
   public  void deleteOr(int id){
       dao.deleteOrder(id);
   }
   
   public void updateStatus(int idO, int status){
       dao.updateStatus(idO, status);
   }
}
