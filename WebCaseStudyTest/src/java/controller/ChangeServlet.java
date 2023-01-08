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
import model.Account;
import service.AccountService;

/**
 *
 * @author dell
 */
@WebServlet(name = "ChangeServlet", urlPatterns = {"/change"})
public class ChangeServlet extends HttpServlet {

    AccountService dao = new AccountService();

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
            out.println("<title>Servlet ChangeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangeServlet at " + request.getContextPath() + "</h1>");
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
        String acc = request.getParameter("user");
        String opass = request.getParameter("opass");
        String npass = request.getParameter("npass");
        String rpass = request.getParameter("rpass");
        HttpSession session = request.getSession();
        if (session.getAttribute("account") != null) {
                if (npass.length() > 5) {
                    if (npass.equals(rpass)) {
                        Account a = dao.checkAcc(acc, opass);
                        if (a == null) {
                            String ms = "Old password incorrect";
                            request.setAttribute("ms", ms);
                            request.getRequestDispatcher("changePass.jsp").forward(request, response);
                        } else {
                            dao.change(acc, npass);
                            Account ac = dao.login(acc, npass);
//                    HttpSession session = request.getSession();
                            String ms1 = "Change password success !!!";
                            session.setAttribute("ms1", ms1);
                            session.setAttribute("account", ac);
                            request.getRequestDispatcher("changePass.jsp").forward(request, response);

                        }
                    } else {
                        String ms = "Re-password incorrect";
                        request.setAttribute("ms", ms);
                        request.getRequestDispatcher("changePass.jsp").forward(request, response);
                    }
                } else {
                    String ms = "New password have more than 5 characters .";
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("changePass.jsp").forward(request, response);
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
