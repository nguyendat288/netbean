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
public class Math implements Serializable {

    private String num1 = "", num2 = "", opera = "+";

    public Math() {
    }

    public Math(String num1, String num2, String opera) {
        this.num1 = num1;
        this.num2 = num2;
        this.opera = opera;
    }

    public String getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public String getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    public String getOpera() {
        return opera;
    }

    public void setOpera(String opera) {
        this.opera = opera;
    }

    public String getResult() {
        String rs = "";
        try {
            double a, b;
            a = Double.parseDouble(num1);
            b = Double.parseDouble(num2);
            switch (opera) {
                case "+":
                    rs = "Tong : " + (a + b);
                    break;
                case "-":
                    rs = "Hieu : " + (a - b);
                    break;
                case "*":
                    rs = "Tich : " + (a * b);
                    break;
                case "/":
                    if (b == 0) {
                        rs = "b phai khac 0";
                    } else {
                        rs = "Thuong : " + (a / b);
                    }
                    break;
            }
        } catch (NumberFormatException e) {
            rs = " Khong phai so";
        }
    return rs;
    }

}
