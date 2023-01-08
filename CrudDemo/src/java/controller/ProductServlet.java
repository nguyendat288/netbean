/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.ProductService;

/**
 *
 * @author dell
 */
public class ProductServlet extends HttpServlet {

    ProductService productService = new ProductService();

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
        String action = request.getParameter("action");
        RequestDispatcher dispatcher;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                response.sendRedirect("/demo/CreateProduct.jsp");
                break;
            case "delete":
                int index = Integer.parseInt(request.getParameter("index"));
                productService.delete(index);
                response.sendRedirect("/demo/product");
                break;
            case "edit":                
                int index1 = Integer.parseInt(request.getParameter("index"));
                request.setAttribute("product", productService.list.get(index1));
                dispatcher= request.getRequestDispatcher("UpdateProduct.jsp");
                dispatcher.forward(request,response);
            default:
                request.setAttribute("ListProduct", productService.list);
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
        String action = request.getParameter("action");
        RequestDispatcher dispatcher;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                int index = productService.list.size() - 1;
                int id = productService.list.get(index).getIdsp() + 1;
                String name = request.getParameter("nameproduct");
                float price = Float.parseFloat(request.getParameter("price"));
                int solg = Integer.parseInt(request.getParameter("soluong"));
                String color = request.getParameter("color");
                int loaisp = Integer.parseInt(request.getParameter("loaisp"));
                Product pro = new Product(id, name, price, solg, color, loaisp);
                productService.create(pro);
                request.setAttribute("ListProduct", productService.list);
                dispatcher = request.getRequestDispatcher("CreateProduct.jsp");
                dispatcher.forward(request, response);
                break;
            case "edit" :
                int idsp1 = Integer.parseInt(request.getParameter("idsp"));
                String nameproduct1 = request.getParameter("nameproduct");
                Float price1 = Float.parseFloat(request.getParameter("price"));
                int soluong1 = Integer.parseInt(request.getParameter("soluong"));
                String color1 = request.getParameter("color");
                int loaisp1 = Integer.parseInt(request.getParameter("loaisp"));
                Product spedit = new Product(idsp1, nameproduct1, price1, soluong1,color1,loaisp1);
                int index1 = Integer.parseInt(request.getParameter("index"));
                    productService.update(spedit, index1);                
                // chuyển hướng request và response sang thàng jsp
                request.setAttribute("ListProduct", productService.list);
                dispatcher = request.getRequestDispatcher("ShowProduct.jsp");
                dispatcher.forward(request, response);
              
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

}
