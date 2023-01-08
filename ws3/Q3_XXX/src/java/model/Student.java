/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author dell
 */
public class Student {
    private int stuid;
    private String stuname;
    private int stugender;
    private String studob;
    private List<Skill> list;

    public Student() {
    }

    public Student(int stuid, String stuname, int stugender, String studob, List<Skill> list) {
        this.stuid = stuid;
        this.stuname = stuname;
        this.stugender = stugender;
        this.studob = studob;
        this.list = list;
    }

    @Override
    public String toString() {
        return "Student{" + "stuid=" + stuid + ", stuname=" + stuname + ", stugender=" + stugender + ", studob=" + studob + ", list=" + list + '}';
    }

    public int getStuid() {
        return stuid;
    }

    public void setStuid(int stuid) {
        this.stuid = stuid;
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public int getStugender() {
        return stugender;
    }

    public void setStugender(int stugender) {
        this.stugender = stugender;
    }

    public String getStudob() {
        return studob;
    }

    public void setStudob(String studob) {
        this.studob = studob;
    }

    public List<Skill> getList() {
        return list;
    }

    public void setList(List<Skill> list) {
        this.list = list;
    }

    
    
}
