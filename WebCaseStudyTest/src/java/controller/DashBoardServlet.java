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
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Product;
import service.AccountService;
import service.ProductService;

/**
 *
 * @author dell
 */
@WebServlet(name = "DashBroathServlet", urlPatterns = {"/dashBoard"})
public class DashBoardServlet extends HttpServlet {

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
            out.println("<title>Servlet DashBroathServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DashBroathServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        if (account != null) {
            if (account.getRole().getId() == 1) {
                ProductService pro = new ProductService();
                int t1 = pro.getMoneyByMonth(1);
                int t2 = pro.getMoneyByMonth(2);
                int t3 = pro.getMoneyByMonth(3);
                int t4 = pro.getMoneyByMonth(4);
                int t5 = pro.getMoneyByMonth(5);
                int t6 = pro.getMoneyByMonth(6);
                int t7 = pro.getMoneyByMonth(7);
                int t8 = pro.getMoneyByMonth(8);
                int t9 = pro.getMoneyByMonth(9);
                int t10 = pro.getMoneyByMonth(10);
                int t11 = pro.getMoneyByMonth(11);
                int t12 = pro.getMoneyByMonth(12);
                request.setAttribute("t1", t1);
                request.setAttribute("t2", t2);
                request.setAttribute("t3", t3);
                request.setAttribute("t4", t4);
                request.setAttribute("t5", t5);
                request.setAttribute("t6", t6);
                request.setAttribute("t7", t7);
                request.setAttribute("t8", t8);
                request.setAttribute("t9", t9);
                request.setAttribute("t10", t10);
                request.setAttribute("t11", t11);
                request.setAttribute("t12", t12);
                ArrayList<Product> listPro = pro.getAllPro();
                int sizePro = listPro.size();
                AccountService acc = new AccountService();
                ArrayList<Account> listAcc = acc.getAllAcc();
                int sizeAcc = listAcc.size();
                int money = pro.getAmountByMonth();
                request.setAttribute("sizePro", sizePro);
                request.setAttribute("sizeAcc", sizeAcc);
                request.setAttribute("money", money);
                request.getRequestDispatcher("dashboard.jsp").forward(request, response);
            } else {
                response.sendRedirect("/show");
            }
        } else {
            response.sendRedirect("/login1");
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
