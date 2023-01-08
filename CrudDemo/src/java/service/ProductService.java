/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.ProductDAO;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author dell
 */
public class ProductService {
    ProductDAO productDAO = new ProductDAO();
    public ArrayList<Product> list=new ArrayList<>();

    public ProductService() {
        list = productDAO.getAllProduct();
    }
    public void delete(int index){
        productDAO.deleteProductById(list.get(index).getIdsp());
        list.remove(index);
    }
    public void create(Product pro){
        productDAO.createProduct(pro);
        list.add(pro);
    }
    public void update(Product pro,int index){
        productDAO.editProduct(pro);
        list.set(index, pro);
    }
    public static void main(String[] args) {
        ProductService pro = new ProductService();
        ArrayList<Product> list = pro.list;
        for(Product a : list){
            System.out.println(a);
        }
    }
}
