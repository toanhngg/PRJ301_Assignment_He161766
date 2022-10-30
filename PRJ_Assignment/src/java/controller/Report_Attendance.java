/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AttandanceDBContext;
import dal.GroupDBContext;
import dal.SessionDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import model.Attandance;
import model.Group;
import model.Session;
import model.Student;

/**
 *
 * @author admin
 */
public class Report_Attendance extends HttpServlet {

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
        AttandanceDBContext db = new AttandanceDBContext();
        int gid = Integer.parseInt(request.getParameter("gid"));
        int subid = Integer.parseInt(request.getParameter("subid"));
        int sesid = Integer.parseInt(request.getParameter("sesid"));
        GroupDBContext groupDB = new GroupDBContext();
        Group group = groupDB.get( gid, subid);
        HashMap<Integer, Double> percent =  groupDB.getPercent(gid, subid);
        
//        ArrayList<Session> ses = group.getSessions();
//         ArrayList<Student> student = group.getStudents();
//         
//         HashMap<Integer,Double> getPercent = new HashMap<>();
//         int totalSession = ses.size();
////         int ses_isChecked = 0;
//         int student_Abs = 0;
//         double percent = 0;
//         for(Student st : student){
//         for (Session ses1 : ses) {
//            ArrayList<Attandance> att= ses1.getAttandances();
//            if(ses1.isAttandated()){
////                ses_isChecked++;
//                for (Attandance attandance : att) {
//                    if(attandance.getStudent().getId() == st.getId()){
//                        if(attandance.isPresent() == false)
//                            student_Abs++;
//                    }
//                }
//            }
//         
//         percent = (student_Abs/totalSession)*100;
//         getPercent.put(st.getId(), percent);
//        }
//         }
        request.setAttribute("percent",percent );
        request.setAttribute("group", group);
        request.getRequestDispatcher("../view/report_attendance.jsp").forward(request, response);
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
        processRequest(request, response);
//       request.getRequestDispatcher("../view/report_attendance.jsp").forward(request, response);

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
//        processRequest(request, response);


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