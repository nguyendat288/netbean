/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Member {
    private String mid;
    private String mname;
    private String mdob;
    private String isGold;
    private Account user;

    public Member() {
    }

    public Member(String mid, String mname, String mdob, String isGold, Account user) {
        this.mid = mid;
        this.mname = mname;
        this.mdob = mdob;
        this.isGold = isGold;
        this.user = user;
    }

    @Override
    public String toString() {
        return "Member{" + "mid=" + mid + ", mname=" + mname + ", mdob=" + mdob + ", isGold=" + isGold + ", user=" + user + '}';
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMdob() {
        return mdob;
    }

    public void setMdob(String mdob) {
        this.mdob = mdob;
    }

    public String getIsGold() {
        return isGold;
    }

    public void setIsGold(String isGold) {
        this.isGold = isGold;
    }

    public Account getUser() {
        return user;
    }

    public void setUser(Account user) {
        this.user = user;
    }
    
}
