/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;

/**
 *
 * @author dell
 */
public class Book implements Serializable{
    private int code;
    private String name;
    private int numPage;
    private boolean soldOut;

    public Book() {
    }

    public Book(int code, String name, int numPage, boolean soldOut) {
        this.code = code;
        this.name = name;
        this.numPage = numPage;
        this.soldOut = soldOut;
    }
    public String getLop(){
        return "SE1636 mai dinh";
    }

    @Override
    public String toString() {
        return code + "\t" + name + "\t" + numPage + "\t" + (soldOut?"soldOut":"avaiable");
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumPage() {
        return numPage;
    }

    public void setNumPage(int numPage) {
        this.numPage = numPage;
    }

    public boolean isSoldOut() {
        return soldOut;
    }

    public void setSoldOut(boolean soldOut) {
        this.soldOut = soldOut;
    }
    
    
}
