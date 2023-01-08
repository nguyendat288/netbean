/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Group {
    private int groupid;
    private String name;

    public Group(int groupid, String name) {
        this.groupid = groupid;
        this.name = name;
    }

    @Override
    public String toString() {
        return "Group{" + "groupid=" + groupid + ", name=" + name + '}';
    }

    public int getGroupid() {
        return groupid;
    }

    public void setGroupid(int groupid) {
        this.groupid = groupid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    

    public Group() {
    }

   

}
