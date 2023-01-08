/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Product {
    private int id;
    private String nameProduct;
    private String img;
    private float price;
    private int soluong;
    private String color;
    private String size;
    private String description;
    private Category category;

    public Product() {
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", nameProduct=" + nameProduct + ", img=" + img + ", price=" + price + ", soluong=" + soluong + ", color=" + color + ", size=" + size + ", description=" + description + ", category=" + category + '}';
    }

    public Product(int id, String nameProduct, String img, float price, int soluong, String color, String size, String description, Category category) {
        this.id = id;
        this.nameProduct = nameProduct;
        this.img = img;
        this.price = price;
        this.soluong = soluong;
        this.color = color;
        this.size = size;
        this.description = description;
        this.category = category;
    }
      public Product( String nameProduct, String img, float price, int soluong, String color, String size, String description, Category category) {
        this.nameProduct = nameProduct;
        this.img = img;
        this.price = price;
        this.soluong = soluong;
        this.color = color;
        this.size = size;
        this.description = description;
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
}
