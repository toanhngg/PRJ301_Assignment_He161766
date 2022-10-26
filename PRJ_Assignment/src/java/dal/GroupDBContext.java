/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Group;
import model.Session;

/**
 *
 * @author admin
 */
public class GroupDBContext extends DBContext<Group> {

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Group> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Group get(int gid, int subid) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql = "SELECT DISTINCT ses.sesid\n" +
"                    FROM [Session] ses \n" +
"                    LEFT JOIN [Group] g ON g.gid = ses.gid\n" +
"                    LEFT JOIN [Student_Group] sg ON sg.gid = g.gid\n" +
"                    LEFT JOIN Student s ON sg.stdid = s.stdid\n" +
"                    LEFT JOIN Lecturer l ON l.lid = ses.lid\n" +
"                    LEFT JOIN [Subject] sb ON sb.subid = g.subid\n" +
"                    WHERE g.gid = ? and sb.subid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            stm.setInt(2, subid);
            ResultSet rs = stm.executeQuery();
            Group group = new Group();
            group.setId(gid);
            while (rs.next()) {
                SessionDBContext sesDB = new SessionDBContext();
                Session session = sesDB.get(rs.getInt("sesid"));
                sessions.add(session);
            }
            group.setSessions(sessions);
            StudentDBContext stdDB = new StudentDBContext();
            group.setStudents(stdDB.list(gid));
            return group;
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
