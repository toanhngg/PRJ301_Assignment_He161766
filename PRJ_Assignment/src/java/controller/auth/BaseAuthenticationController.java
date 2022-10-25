/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Account;

/**
 *
 * @author admin
 */
public abstract class BaseAuthenticationController extends HttpServlet {

    private boolean isAuthenticated(HttpServletRequest req) {
        return req.getSession().getAttribute("account") != null;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (isAuthenticated(req)) {
            //do business
            Account account = (Account) req.getSession().getAttribute("account");
            doPost(req, resp, account);
        } else {
            resp.getWriter().println("access denied!");
        }
    }

    private void doPost(HttpServletRequest req, HttpServletResponse resp, Account account) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (isAuthenticated(req)) {
            Account account = (Account) req.getSession().getAttribute("account");
            doGet(req, resp, account);
        } else {
            resp.getWriter().println("access denied!");
        }
    }

    private void doGet(HttpServletRequest req, HttpServletResponse resp, Account account) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
