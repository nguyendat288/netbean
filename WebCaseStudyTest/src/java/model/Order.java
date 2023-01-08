/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;


/**
 *
 * @author dell
 */
public class Order {
    private int id;
    private Account idAcc;
    private float totalMoney;
    private Date dateOrder;
    private int status; 

    public Order() {
    }

    public Order(int id, Account idAcc, float totalMoney, Date dateOrder, int status) {
        this.id = id;
        this.idAcc = idAcc;
        this.totalMoney = totalMoney;
        this.dateOrder = dateOrder;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", idAcc=" + idAcc + ", totalMoney=" + totalMoney + ", dateOrder=" + dateOrder + ", status=" + status + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getIdAcc() {
        return idAcc;
    }

    public void setIdAcc(Account idAcc) {
        this.idAcc = idAcc;
    }

    public float getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(float totalMoney) {
        this.totalMoney = totalMoney;
    }

    public Date getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(Date dateOrder) {
        this.dateOrder = dateOrder;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    
}
