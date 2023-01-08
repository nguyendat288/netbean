/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Product {

    private int idsp;
    private String nameproduct;
    private float price;
    private int soluong;
    private String color;
    private int loaisp;

    public Product() {
    }

    public Product(int idsp, String nameproduct, float price, int soluong, String color, int loaisp) {
        this.idsp = idsp;
        this.nameproduct = nameproduct;
        this.price = price;
        this.soluong = soluong;
        this.color = color;
        this.loaisp = loaisp;
    }
    @Override
    public String toString() {
        return "Product{" + "idsp=" + idsp + ", nameproduct=" + nameproduct + ", price=" + price + ", soluong=" + soluong + ", color=" + color + ", loaisp=" + loaisp + '}';
    }

    public int getIdsp() {
        return idsp;
    }

    public void setIdsp(int idsp) {
        this.idsp = idsp;
    }

    public String getNameproduct() {
        return nameproduct;
    }

    public void setNameproduct(String nameproduct) {
        this.nameproduct = nameproduct;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getLoaisp() {
        return loaisp;
    }

    public void setLoaisp(int loaisp) {
        this.loaisp = loaisp;
    }

}
