/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class OrderDetail {
    private int id;
    private Order order;
    private Product product;
    private float price;
    private int slg;
    private float rate;
    private String cmt;

    public OrderDetail() {
    }

    public OrderDetail(int id, Order order, Product product, float price, int slg, float rate, String cmt) {
        this.id = id;
        this.order = order;
        this.product = product;
        this.price = price;
        this.slg = slg;
        this.rate = rate;
        this.cmt = cmt;
    }
    public OrderDetail(int id, Order order, Product product, float price, int slg) {
        this.id = id;
        this.order = order;
        this.product = product;
        this.price = price;
        this.slg = slg;
     
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getSlg() {
        return slg;
    }

    public void setSlg(int slg) {
        this.slg = slg;
    }

 
    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public String getCmt() {
        return cmt;
    }

    public void setCmt(String cmt) {
        this.cmt = cmt;
    }
    
}
