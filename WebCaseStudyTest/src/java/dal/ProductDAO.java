/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Category;
import model.Product;
import model.TopAccount;
import model.TopProduct;

/**
 *
 * @author dell
 */
public class ProductDAO extends DBContext {
    AccountDAO dao = new AccountDAO();
    public boolean checkCategory(String name) {
        ArrayList<Category> list = getAllCategory();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getName().equals(name)) {
                return false;
            }
        }
        return true;
    }
    

    public void addCategory(Category ca) {
        String sql = "insert into Category(nameCategory) values (?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, ca.getName());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt("idCategory"),
                        rs.getString("nameCategory")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(int id) {
        String sql = "select * from Product where idProduct = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int idCa = rs.getInt("idCategory");
                Category ca = getCategoryById(idCa);
                Product p = new Product(id,
                        rs.getString("nameProduct"),
                        rs.getString("img"),
                        rs.getFloat("price"),
                        rs.getInt("soluong"),
                        rs.getString("color"),
                        rs.getString("size"),
                        rs.getString("description"),
                        ca
                );
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Category getCategoryById(int id) {
        ArrayList<Category> list1 = getAllCategory();
        for (int i = 0; i < list1.size(); i++) {
            if (list1.get(i).getId() == id) {
                return list1.get(i);
            }
        }
        return null;
    }

    public ArrayList<Product> getAllProductSortByName() {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Product order by nameProduct asc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idProduct");
                String name = rs.getString("nameProduct");
                String img = rs.getString("img");
                Float price = rs.getFloat("price");
                int solg = rs.getInt("soluong");
                String color = rs.getString("color");
                String size = rs.getString("size");
                String descrip = rs.getString("description");
                int idCa = rs.getInt("idCategory");
                Category ca = getCategoryById(idCa);
                list.add(new Product(id, name, img, price, solg, color, size, descrip, ca));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Product> getAllProductSortByPrice() {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Product order by price asc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idProduct");
                String name = rs.getString("nameProduct");
                String img = rs.getString("img");
                Float price = rs.getFloat("price");
                int solg = rs.getInt("soluong");
                String color = rs.getString("color");
                String size = rs.getString("size");
                String descrip = rs.getString("description");
                int idCa = rs.getInt("idCategory");
                Category ca = getCategoryById(idCa);
                list.add(new Product(id, name, img, price, solg, color, size, descrip, ca));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Product> getAllProductByCategory(int id1) {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "  select p.idProduct , p.nameProduct,p.img,p.price,p.soluong,p.color,p.size,p.description,c.idCategory  ,c.nameCategory \n"
                + "  from Product p inner join Category c on p.idCategory=c.idCategory where p.idCategory = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id1);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idProduct");
                String name = rs.getString("nameProduct");
                String img = rs.getString("img");
                Float price = rs.getFloat("price");
                int solg = rs.getInt("soluong");
                String color = rs.getString("color");
                String size = rs.getString("size");
                String descrip = rs.getString("description");
                int idCa = rs.getInt("idCategory");
                Category ca = getCategoryById(idCa);
                list.add(new Product(id, name, img, price, solg, color, size, descrip, ca));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Product> getAllProductByName(String name1) {
        ArrayList<Product> list = new ArrayList<>();
        String sql = " select p.idProduct,p.nameProduct,p.img,p.price,p.soluong,p.color,p.size,p.description,p.idCategory,c.nameCategory "
                + " from Product p inner join Category c on p.idCategory = c.idCategory where p.nameProduct like '%" + name1 + "%'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idProduct");
                String name = rs.getString("nameProduct");
                String img = rs.getString("img");
                Float price = rs.getFloat("price");
                int solg = rs.getInt("soluong");
                String color = rs.getString("color");
                String size = rs.getString("size");
                String descrip = rs.getString("description");
                int idCa = rs.getInt("idCategory");
                Category ca = getCategoryById(idCa);
                list.add(new Product(id, name, img, price, solg, color, size, descrip, ca));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "  select p.idProduct,p.nameProduct,p.img,p.price,p.soluong,p.color,p.size,p.description,p.idCategory,c.nameCategory "
                + " from Product p inner join Category c on p.idCategory = c.idCategory";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                int id = rs.getInt("idProduct");
                String name = rs.getString("nameProduct");
                String img = rs.getString("img");
                Float price = rs.getFloat("price");
                int solg = rs.getInt("soluong");
                String color = rs.getString("color");
                String size = rs.getString("size");
                String descrip = rs.getString("description");
                int idCa = rs.getInt("idCategory");
                Category ca = getCategoryById(idCa);
                list.add(new Product(id, name, img, price, solg, color, size, descrip, ca));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Product> getProductTop4(int idCa1, int idP) {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select top 4 * from Product where idCategory= ? and idProduct != ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, idCa1);
            ps.setInt(2, idP);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idProduct");
                String name = rs.getString("nameProduct");
                String img = rs.getString("img");
                Float price = rs.getFloat("price");
                int solg = rs.getInt("soluong");
                String color = rs.getString("color");
                String size = rs.getString("size");
                String descrip = rs.getString("description");
                Category ca = getCategoryById(idCa1);
                list.add(new Product(id, name, img, price, solg, color, size, descrip, ca));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void createProduct(Product pro) {
        String sql = "insert into Product(nameProduct,img,price,soluong,color,size,description,idCategory) values (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, pro.getNameProduct());
            ps.setString(2, pro.getImg());
            ps.setFloat(3, pro.getPrice());
            ps.setInt(4, pro.getSoluong());
            ps.setString(5, pro.getColor());
            ps.setString(6, pro.getSize());
            ps.setString(7, pro.getDescription());
            ps.setInt(8, pro.getCategory().getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteProductById(int id) {
        try {
            String sql = "delete from product where idProduct = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editProduct(Product pro) {
        try {
            String spl = "UPDATE Product set nameproduct = ?,img = ?,price= ?, soluong = ? ,color= ? ,size = ? ,description = ?,idCategory = ? where idProduct = ?";
            PreparedStatement ps = connection.prepareStatement(spl);
            ps.setInt(9, pro.getId());
            ps.setString(1, pro.getNameProduct());
            ps.setString(2, pro.getImg());
            ps.setFloat(3, pro.getPrice());
            ps.setInt(4, pro.getSoluong());
            ps.setString(5, pro.getColor());
            ps.setString(6, pro.getSize());
            ps.setString(7, pro.getDescription());
            ps.setInt(8, pro.getCategory().getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<TopProduct> getTop5Trend() {
        List<TopProduct> list1 = new ArrayList<>();
        String sql = " select top 5  idProduct,count(slg) as 'soluong' from OrderDetail d\n"
                + " inner join Orders o on o.idOrder = d.idOrder\n"
                + " where MONTH(dateOrder) = MONTH(getDate())\n"
                + " group by idProduct\n"
                + " order by soluong desc ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idP = rs.getInt("idProduct");
                Product p = getProductById(idP);
                int solg = rs.getInt("soluong");
                list1.add(new TopProduct(p, solg));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list1;
    }
    public List<TopProduct> getTop4Trend() {
        List<TopProduct> list1 = new ArrayList<>();
        String sql = " select top 4  idProduct,count(slg) as 'soluong' from OrderDetail d\n"
                + " inner join Orders o on o.idOrder = d.idOrder\n"
                + " where MONTH(dateOrder) = MONTH(getDate())\n"
                + " group by idProduct\n"
                + " order by soluong desc ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idP = rs.getInt("idProduct");
                Product p = getProductById(idP);
                int solg = rs.getInt("soluong");
                list1.add(new TopProduct(p, solg));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list1;
    }

    public List<TopAccount> getTop5Account() {
        List<TopAccount> list1 = new ArrayList<>();
        String sql = "  select top 5  idAcc,count(idAcc) as 'soluong' from Orders o\n"
                + " where MONTH(dateOrder) = MONTH(getDate())\n"
                + " group by idAcc\n"
                + " order by soluong desc ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idAcc = rs.getInt("idAcc");
                Account p = dao.getAccountById(idAcc);
                int solg = rs.getInt("soluong");
                list1.add(new TopAccount(p, solg));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list1;
    }
    public int getAmountByMonth(){
        String sql ="select sum(totalMoney) as money from Orders \n" +
" where MONTH(dateOrder) = MONTH(getDate())";
     try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int money = rs.getInt("money");
                return money;
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;   
    } 
    public int getMoneyByMonth(int month){
        String sql ="select sum(totalMoney) as 'money' from Orders where MONTH(dateOrder) = ?";
     try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, month);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int money = rs.getInt("money");
                return money;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;   
    } 
    

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        int m = dao.getMoneyByMonth(12);
        System.out.println(m);
//        Category ca = new Category("abc");
//        dao.addCategory(ca);
//        Category ca= dao.getCategoryById(1);
//        Product pro = new Product(1, "edit", "ádasd", 1, 1, "ádad", "40", "dâsda", ca);
//        dao.editProduct(pro);
//        ArrayList<Product> list = new ArrayList<>();
        List<TopAccount> list1 = new ArrayList<>();
        list1 = dao.getTop5Account();
        for (TopAccount c : list1) {
            System.out.println(c);
        }
//         Product p = dao.getProductById(1);
//        Category ca = new Category(1, "Nike");
//        Product pro = new Product(1843, "dá", "dasad", 0, 0, "ádsad", "40", "dâsd", ca);
//        dao.editProduct(pro);
//          Product p = dao.getProductById(1);
//          System.out.println(p);
//          System.out.println(dao.getNameCategory(2));
//          list = dao.getAllProductByCategory(1);
//        list=dao.getAllProductByName("M");
//          for(Product c : list){
//              System.out.println(c);
//          } 
    }
}
