/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.auth;

import dal.AccountDBContext;
import dal.LecturerDBContext;
import dal.StudentDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import model.Account;
import model.Lecturer;
import model.Role;
import model.Student;

/**
 *
 * @author admin
 */
public class LoginController extends HttpServlet {

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
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("view/auth/login.jsp").forward(request, response);
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
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        AccountDBContext accDB = new AccountDBContext();
//        Account account = accDB.get(username, password);
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            AccountDBContext accDB = new AccountDBContext();
            Account account = accDB.get(username, password);
            try {
                if (account == null) {
                    response.getWriter().println("Login fail! Please input username and password");
                    request.getRequestDispatcher("/view/auth/login.jsp").forward(request, response);

                } else {
                    request.getSession().setAttribute("account", account);
                    // tao Cookie lay thong tin cua nguoi dung de nho lai
                    Cookie user = new Cookie("user", account.getUsername());
                    Cookie pass = new Cookie("pass", account.getPassword());
                    if (request.getParameter("remember_information") != null) {
                        user.setMaxAge(60 * 60 * 24);
                        pass.setMaxAge(60 * 60 * 24);

                    } else {
                        user.setMaxAge(0);
                        pass.setMaxAge(0);
                    }
                    response.addCookie(user);
                    response.addCookie(pass);
//                request.getRequestDispatcher("home.jsp").forward(request, response);
                    ArrayList<Role> role = account.getRoles();
                    for (Role r : role) {
                        switch (r.getId()) {
                            case 1:
                                //   request.getSession().setAttribute("account", account);
                                response.sendRedirect("/PRJ_Assignment/student/timetable1");
                                break;
                            case 2:
                                //       request.getSession().setAttribute("account", account);
                                response.sendRedirect("/PRJ_Assignment/lecture/timetable");
                                break;
                            case 3:
                                response.sendRedirect("/PRJ_Assignment/view/admin");
                                break;
                            default:
                                break;
                        }
                        
                        
                    }
//        if(lecturer != null){
//            request.getSession().setAttribute("account", account);
//            response.sendRedirect("/PRJ_Assignment/lecture/timetable");
//        } else if(student != null){ 
//            request.getSession().setAttribute("account", account);
//            response.sendRedirect("/PRJ_Assignment/student/timetable1");
//        }

                }
            } catch (NullPointerException e) {
            }

        } catch (IOException e) {
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
