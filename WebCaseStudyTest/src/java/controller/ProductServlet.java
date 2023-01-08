/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Category;
import model.Product;
import service.ProductService;

/**
 *
 * @author dell
 */
@WebServlet(name = "ProductServlet", urlPatterns = {"/product"})
public class ProductServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductService pro = new ProductService();
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("account");
        String action = request.getParameter("action");
        RequestDispatcher dispatcher;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                if (acc != null) {
                    if (acc.getRole().getId() == 1) {
                        ArrayList<Category> listCa1 = pro.getAllCategory();
                        request.setAttribute("ListCategory", listCa1);
                        dispatcher = request.getRequestDispatcher("CreateProduct.jsp");
                        dispatcher.forward(request, response);
                    } else {
                        response.sendRedirect("/show");
                    }
                } else {
                    response.sendRedirect("/login1");
                }
                break;
            case "edit":
                if (acc != null) {
                    if (acc.getRole().getId() == 1) {
                        String index = request.getParameter("id");
                        ArrayList<Category> listCa = pro.getAllCategory();
                        int index1;
                        try {
                            index1 = Integer.parseInt(index);
                            request.setAttribute("ListCategory", listCa);
                            request.setAttribute("pro1", pro.getProductById(index1));
                            dispatcher = request.getRequestDispatcher("EditProduct.jsp");
                            dispatcher.forward(request, response);
                        } catch (NumberFormatException e) {
                            System.out.println(e);
                            response.sendRedirect("/show");
                        }
                    } else {
                        response.sendRedirect("/show");
                    }
                } else {
                    response.sendRedirect("/login1");
                }
                break;
            case "delete":
                if (acc != null) {
                    if (acc.getRole().getId() == 1) {
                        int index = Integer.parseInt(request.getParameter("index"));
                        pro.deletePro(index);
                        response.sendRedirect("/product");
                    } else {
                        response.sendRedirect("/show");
                    }
                } else {
                    response.sendRedirect("/login1");
                }
                break;
            case "findName":
                String name = request.getParameter("findName");
                ArrayList<Product> list3 = pro.getAllProByName(name);
                request.setAttribute("ListProduct", list3);
                dispatcher = request.getRequestDispatcher("ShowProduct.jsp");
                dispatcher.forward(request, response);
                break;
            default:
                ArrayList<Product> list5 = pro.getAllPro();
                request.setAttribute("ListProduct", list5);
                dispatcher = request.getRequestDispatcher("ShowProduct.jsp");
                dispatcher.forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductService pro = new ProductService();
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("account");
        String action = request.getParameter("action");
        ArrayList<Category> list = pro.getAllCategory();
        request.setAttribute("ListCategory", list);
        RequestDispatcher dispatcher;
        switch (action) {
            case "create":
                if (acc != null) {
                    if (acc.getRole().getId() == 1) {
                        String name = request.getParameter("name");
                        String img = request.getParameter("img");
                        String price = request.getParameter("price");
                        String solg = request.getParameter("soluong");
                        String color = request.getParameter("color");
                        String size = request.getParameter("size");
                        String description = request.getParameter("description");
                        String idCa = request.getParameter("category");
                        float price1;
                        int solg1, idCa1;
                        try {
                            price1 = Float.parseFloat(price);
                            solg1 = Integer.parseInt(solg);
                            idCa1 = Integer.parseInt(idCa);
                            Category ca = pro.getCategoryById(idCa1);
                            Product product = new Product(name, img, price1, solg1, color, size, description, ca);
                            pro.createProduct(product);
                            response.sendRedirect("/product");
                        } catch (NumberFormatException e) {
                            System.out.println(e);
                            response.sendRedirect("/show");
                        }
                    } else {
                        response.sendRedirect("/show");
                    }
                } else {
                    response.sendRedirect("/login1");
                }

                break;

            case "edit":
                if (acc != null) {
                    if (acc.getRole().getId() == 1) {
                        String id = request.getParameter("idsp");
                        String name1 = request.getParameter("name");
                        String img = request.getParameter("img");
                        String price1 = request.getParameter("price");
                        String slg = request.getParameter("soluong");
                        String color = request.getParameter("color");
                        String size = request.getParameter("size");
                        String description = request.getParameter("description");
                        String idCa1 = request.getParameter("category");
                        int idsp, soluong, ca;
                        float price;
                        try {
                            idsp = Integer.parseInt(id);
                            price = Float.parseFloat(price1);
                            soluong = Integer.parseInt(slg);
                            ca = Integer.parseInt(idCa1);
                            Category category = pro.getCategoryById(ca);
                            System.out.println(category);
                            Product product = new Product(idsp, name1, img, price, soluong, color, size, description, category);
                            System.out.println(product);
                            pro.editProduct(product);
                            response.sendRedirect("/product");
                        } catch (NumberFormatException e) {
                            response.sendRedirect("/show");
                        }
                    } else {
                        response.sendRedirect("/product");
                    }
                } else {
                    response.sendRedirect("/login1");
                }
                break;
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
//public static void main(String[] args) {
//        ProductService pro = new ProductService();
//        ArrayList<Category> listCa = pro.getAllCategory();
//        for(Category c: listCa){
//            System.out.println(c);
//        }
//    }
}
