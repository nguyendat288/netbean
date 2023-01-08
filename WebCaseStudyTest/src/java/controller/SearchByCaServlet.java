/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Category;
import model.Product;
import model.TopProduct;
import service.ProductService;

/**
 *
 * @author dell
 */
@WebServlet(name = "SearchByCaServlet", urlPatterns = {"/find"})
public class SearchByCaServlet extends HttpServlet {

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
            out.println("<title>Servlet SearchByCaServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchByCaServlet at " + request.getContextPath() + "</h1>");
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
        if (action.equals("findName")) {
            ProductService pro = new ProductService();
            String name = request.getParameter("cate");
            int id;
            try {
                id = Integer.parseInt(name);
                ArrayList<Product> list = pro.getAllProByCategory(id);
                request.setAttribute("ListProduct", list);
                  ArrayList<TopProduct> listPro = new ArrayList<>();
        listPro = (ArrayList<TopProduct>) pro.getTop4Trend(); 
         request.setAttribute("ListTopTrend", listPro);
                ArrayList<Category> list2 = pro.getAllCategory();
                request.setAttribute("ListCategory", list2);
                request.setAttribute("cate1", name);
                request.getRequestDispatcher("show.jsp").forward(request, response);

            } catch (NumberFormatException e) {
                response.sendRedirect("/show");

            }

        } else {
            response.sendRedirect("/show");
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
        processRequest(request, response);
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
