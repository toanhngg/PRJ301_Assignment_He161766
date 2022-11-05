/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

//import controller.auth.BaseAuthenticationController;
import controller.auth.BaseRoleController;
import dal.SessionDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Account;
//import model.Account;
import model.Attandance;
import model.Session;
import model.Student;

/**
 *
 * @author admin
 */
public class Check_Attendance extends BaseRoleController {

//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
//        Session ses = new Session();
//        ses.setId(Integer.parseInt(req.getParameter("sesid")));
//        String[] stdids = req.getParameterValues("stdid");
//        for (String stdid : stdids) {
//            Attandance a = new Attandance();
//            Student s = new Student();
//            a.setStudent(s);
//            a.setSession(ses);
//            a.setDescription(req.getParameter("description" + stdid));
//            a.setPresent(req.getParameter("present" + stdid).equals("present"));
//            s.setId(Integer.parseInt(stdid));
//            ses.getAttandances().add(a);
//        }
//        SessionDBContext db = new SessionDBContext();
////        db.update(ses);
//        db.updateAttandance(ses);
//        resp.sendRedirect("check?id=" + ses.getId());
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
//        int sesid = Integer.parseInt(req.getParameter("id"));
//        SessionDBContext sesDB = new SessionDBContext();
//        Session ses = sesDB.get(sesid);
//        req.setAttribute("ses", ses);
//        req.getRequestDispatcher("../view/check_attendance.jsp").forward(req, resp);
//    }

    @Override
    protected void processAuthPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Session ses = new Session();
        ses.setId(Integer.parseInt(req.getParameter("sesid")));
        String[] stdids = req.getParameterValues("stdid");
        for (String stdid : stdids) {
            Attandance a = new Attandance();
            Student s = new Student();
            a.setStudent(s);
            a.setSession(ses);
            a.setDescription(req.getParameter("description" + stdid));
            a.setPresent(req.getParameter("present" + stdid).equals("present"));
            s.setId(Integer.parseInt(stdid));
            ses.getAttandances().add(a);
        }
        SessionDBContext db = new SessionDBContext();
//        db.update(ses);
        db.updateAttandance(ses);
        resp.sendRedirect("check?id=" + ses.getId());
    }

    @Override
    protected void processAuthGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int sesid = Integer.parseInt(req.getParameter("id"));
        SessionDBContext sesDB = new SessionDBContext();
        Session ses = sesDB.get(sesid);
        req.setAttribute("ses", ses);
        req.getRequestDispatcher("../view/check_attendance.jsp").forward(req, resp);
    }

}
