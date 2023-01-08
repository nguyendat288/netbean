/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.ProductDAO;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;
import model.TopAccount;
import model.TopProduct;

/**
 *
 * @author dell
 */
public class ProductService {

    ProductDAO pro = new ProductDAO();
    ArrayList list = new ArrayList();

    public ArrayList<Product> getListByPage(ArrayList<Product> list1, int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list1.get(i));
        }
        return arr;
    }

    public ArrayList<Product> getAllPro() {
        list = pro.getAllProduct();
        return list;
    }
    public ArrayList<Product> getAllProductSortByName() {
        list = pro.getAllProductSortByName();
        return list;
    }
    public ArrayList<Product> getAllProductSortByPrice() {
        list = pro.getAllProductSortByPrice();
        return list;
    }

    public ArrayList<Product> getProTop4(int idCa, int idP) {
        list = pro.getProductTop4(idCa, idP);
        return list;
    }

    public ArrayList<Product> getAllProByCategory(int id) {
        list = pro.getAllProductByCategory(id);
        return list;
    }

    public Product getProductById(int id) {
        return pro.getProductById(id);
    }

    public Category getCategoryById(int id) {
        return pro.getCategoryById(id);
    }

    public ArrayList<Product> getAllProByName(String name) {
        list = pro.getAllProductByName(name);
        return list;
    }

    public void deletePro(int index) {
        ArrayList<Product> list1 = pro.getAllProduct();
        int id1 = list1.get(index).getId();
        pro.deleteProductById(id1);
    }

    public ArrayList<Category> getAllCategory() {
        list = pro.getAllCategory();
        return list;
    }

    public void createProduct(Product product) {
        pro.createProduct(product);
    }

    public void editProduct(Product product) {
        pro.editProduct(product);
    }
    public  List<TopProduct> getTop5Trend(){
        return pro.getTop5Trend();
    }
    public  List<TopProduct> getTop4Trend(){
        return pro.getTop4Trend();
    }
    public  List<TopAccount> getTop5Account(){
        return pro.getTop5Account();
    }
    public int getAmountByMonth(){
        return pro.getAmountByMonth();
    }
    public int getMoneyByMonth(int month){
        return pro.getMoneyByMonth(month);
    }

    public static void main(String[] args) {
        ProductService pro = new ProductService();
//        Product c = pro.getProductById(29);
//        System.out.println(c);
//        ArrayList<Category> list = pro.getAllCategory();
        ArrayList<TopAccount> list1 = (ArrayList<TopAccount>) pro.getTop5Account();
        
        for(TopAccount c : list1) {
            System.out.println(c); 
        }
        
//        for (Category c : list) {
//            System.out.println(c);
//        }
    }

}
