/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import model.Admin;

/**
 *
 * @author dell
 */
@WebServlet(name = "LogInServlet", urlPatterns = {"/login"})
public class LogInServlet extends HttpServlet {

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
            out.println("<title>Servlet LogInServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LogInServlet at " + request.getContextPath() + "</h1>");
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
                 request.getRequestDispatcher("login.jsp").forward(request, response);
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
        String r = request.getParameter("rem");
        DAO dao = new DAO();
        String acc = request.getParameter("username");
        String pass = request.getParameter("password");
        Cookie cu = new Cookie("cuer",acc); 
        Cookie cp = new Cookie("cpass",pass); 
        Cookie cr = new Cookie("crem",r); 
        if(r!= null){
            cu.setMaxAge(60*60*24*10);
            cp.setMaxAge(60*60*24*10);
            cr.setMaxAge(60*60*24*10);
        }else{
           cu.setMaxAge(0);
            cp.setMaxAge(0);
            cr.setMaxAge(0); 
        }
        response.addCookie(cu);
        response.addCookie(cp);
        response.addCookie(cr);
        
        Admin d = dao.check(acc, pass);
        if (d == null) {
            String ms = "username or password incorrect !!!";
            request.setAttribute("ms", ms);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            // tim thay session 
            HttpSession session = request.getSession();
            // tao tk session
            session.setAttribute("account", d);
            response.sendRedirect("home.jsp");
//            if (d.getRole() == 1) {
//                response.sendRedirect("admin.jsp");
//            } else {
//                response.sendRedirect("user.jsp");
//            }
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
