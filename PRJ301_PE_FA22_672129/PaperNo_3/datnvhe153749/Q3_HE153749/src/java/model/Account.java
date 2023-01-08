/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Account {
    private String user, pass;

    public Account() {
    }
    
    public Account(String user, String pass) {
        this.user = user;
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "Account{" + "user=" + user + ", pass=" + pass + '}';
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
}
