/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class TopProduct {
    private Product pro;
    private int slg;

    public TopProduct() {
    }

    public TopProduct(Product pro, int slg) {
        this.pro = pro;
        this.slg = slg;
    }

    @Override
    public String toString() {
        return "TopProduct{" + "pro=" + pro + ", slg=" + slg + '}';
    }

    public Product getPro() {
        return pro;
    }

    public void setPro(Product pro) {
        this.pro = pro;
    }

    public int getSlg() {
        return slg;
    }

    public void setSlg(int slg) {
        this.slg = slg;
    }
    
}
