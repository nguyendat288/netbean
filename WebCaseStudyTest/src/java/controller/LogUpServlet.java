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
import java.util.regex.Pattern;
import model.Account;
import model.Role;
import service.AccountService;

/**
 *
 * @author dell
 */
@WebServlet(name = "LogUpServlet", urlPatterns = {"/register"})
public class LogUpServlet extends HttpServlet {

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
            out.println("<title>Servlet LogUpServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LogUpServlet at " + request.getContextPath() + "</h1>");
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
    AccountService accSer = new AccountService();
    ArrayList<Role> list = accSer.getRole();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acc = request.getParameter("account");
        request.setAttribute("acc", acc);
        String pass = request.getParameter("password");
        request.setAttribute("pass", pass);
        String fisrtname = request.getParameter("fisrtname");
        request.setAttribute("fisrtname", fisrtname);
        String lastname = request.getParameter("lastname");
        request.setAttribute("lastname", lastname);
        String phone = request.getParameter("phone");
        request.setAttribute("phone", phone);
        String email = request.getParameter("email");
        request.setAttribute("email", email);
        String address = request.getParameter("address");
        request.setAttribute("address", address);

        if (accSer.checkPhone(phone) == false) {
            if (accSer.checkEmail(email) == false) {
                Account account = new Account(acc, pass, fisrtname, lastname, email, phone, address, list.get(1));
                if (accSer.addAccount(account)) {
                    response.sendRedirect("login.jsp");
                } else {
                    String ms = "username existed !!!";
                    request.setAttribute("msAcc", ms);
                    request.getRequestDispatcher("logup.jsp").forward(request, response);
                }
            } else {
                String msEmail = "Email was exist !!!";
                request.setAttribute("msEmail", msEmail);
                request.getRequestDispatcher("logup.jsp").forward(request, response);
            }
        } else {
            String msPhone = "phone number was exist !!!";
            request.setAttribute("msPhone", msPhone);
            request.getRequestDispatcher("logup.jsp").forward(request, response);

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
