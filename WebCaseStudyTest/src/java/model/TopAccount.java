/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class TopAccount {
    private Account acc ;
    private int solg;

    public TopAccount() {
    }

    public TopAccount(Account acc, int solg) {
        this.acc = acc;
        this.solg = solg;
    }

    @Override
    public String toString() {
        return "TopAccount{" + "acc=" + acc + ", solg=" + solg + '}';
    }

    public Account getAcc() {
        return acc;
    }

    public void setAcc(Account acc) {
        this.acc = acc;
    }

    public int getSolg() {
        return solg;
    }

    public void setSolg(int solg) {
        this.solg = solg;
    }
    
}
