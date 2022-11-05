/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import controller.auth.BaseAuthenticationController;
import controller.auth.BaseRoleController;
import dal.AttandanceDBContext;
import dal.GroupDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import model.Account;
import model.Group;

/**
 *
 * @author admin
 */
public class Report_Attendance extends BaseRoleController {

    @Override
    protected void processAuthPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    protected void processAuthGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AttandanceDBContext db = new AttandanceDBContext();
        int gid = Integer.parseInt(req.getParameter("gid"));
        int subid = Integer.parseInt(req.getParameter("subid"));
        int sesid = Integer.parseInt(req.getParameter("sesid"));
        GroupDBContext groupDB = new GroupDBContext();
        Group group = groupDB.get(gid, subid);
        HashMap<Integer, Double> percent = groupDB.getPercent(gid, subid);
        req.setAttribute("percent", percent);
        req.setAttribute("group", group);
        req.getRequestDispatcher("../view/report_attendance.jsp").forward(req, resp);
    }

}
