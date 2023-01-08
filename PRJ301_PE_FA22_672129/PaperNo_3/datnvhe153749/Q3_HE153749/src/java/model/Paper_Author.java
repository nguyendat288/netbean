/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Paper_Author {
    private Paper paper;
    private Author author ;
    private int cor;

    public Paper_Author() {
    }

    public Paper_Author(Paper paper, Author author, int cor) {
        this.paper = paper;
        this.author = author;
        this.cor = cor;
    }

    @Override
    public String toString() {
        return "Paper_Author{" + "paper=" + paper + ", author=" + author + ", cor=" + cor + '}';
    }

    public Paper getPaper() {
        return paper;
    }

    public void setPaper(Paper paper) {
        this.paper = paper;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public int getCor() {
        return cor;
    }

    public void setCor(int cor) {
        this.cor = cor;
    }
    
}
