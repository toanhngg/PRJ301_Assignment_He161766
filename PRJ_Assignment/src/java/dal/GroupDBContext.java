/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attandance;
import model.Group;
import model.Session;
import model.Student;

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

    public HashMap<Integer, Double> getPercent(int gid, int subid) {
        HashMap<Integer, Double> getPercent = new HashMap<>();
        try {
            String sql = "Select s.stdid ,sum(case present when 0 then 1 else 0 end) as [NumberOfAbsent], count(ses.[index]) as [NumberOfSession]\n"
                    + "                    from Session ses left join [Group] g on ses.gid = g.gid\n"
                    + "                    				 left join Subject sub on sub.subid = g.subid\n"
                    + "                    				 left join Student_Group sg on sg.gid = g.gid\n"
                    + "                    				 left join [Student] s ON s.stdid = sg.stdid\n"
                    + "                                     left join Attandance a ON s.stdid = a.stdid AND ses.sesid = a.sesid\n"
                    + "                    				 where g.gid = ?  and sub.subid= ?  \n"
                    + "                    			 group by s.stdid";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            stm.setInt(2, subid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                double percent = (double) rs.getInt("NumberOfAbsent") / rs.getInt("NumberOfSession") * 100;
                getPercent.put(rs.getInt("stdid"), percent);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return getPercent;
    }

//    public static void main(String[] args) {
//        GroupDBContext g = new GroupDBContext();
//        HashMap<Integer, Double> m = g.getPercent(1, 1);
//        System.out.println(g.getPercent(1, 1));
//        for (HashMap.Entry<Integer, Double> en : m.entrySet()) {
//            Integer key = en.getKey();
//            Double val = en.getValue();
//            System.out.println(key + "  " + val);
//        }
//
//    }

    public Group get(int gid, int subid) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql = "SELECT distinct ses.sesid FROM [Group] g\n"
                    + "LEFT JOIN [Session] ses ON ses.gid = g.gid\n"
                    + "LEFT JOIN Student_Group sg ON sg.gid = g.gid\n"
                    + "LEFT JOIN Student s ON s.stdid = sg.stdid\n"
                    + "LEFT JOIN Lecturer l ON l.lid = ses.lid\n"
                    + "LEFT JOIN [Attandance] a on a.sesid = ses.sesid\n"
                    + "LEFT JOIN [Subject] sb ON sb.subid = g.subid\n"
                    + "WHERE g.gid = ? and sb.subid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            stm.setInt(2, subid);
            ResultSet rs = stm.executeQuery();
            Group group = new Group();
            group.setId(gid);
            while (rs.next()) {
                SessionDBContext ses = new SessionDBContext();
                Session session = ses.get(rs.getInt("sesid"));
                sessions.add(session);
            }

            group.setSessions(sessions);
            StudentDBContext std = new StudentDBContext();
            group.setStudents(std.list(gid));
            return group;
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
