/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Paper {
    private int id ;
    private String title;
    private String date;
    private int open;

    public Paper() {
    }

    public Paper(int id, String title, String date, int open) {
        this.id = id;
        this.title = title;
        this.date = date;
        this.open = open;
    }

    @Override
    public String toString() {
        return "Paper{" + "id=" + id + ", title=" + title + ", date=" + date + ", open=" + open + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getOpen() {
        return open;
    }

    public void setOpen(int open) {
        this.open = open;
    }
    
}
