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
import model.Student;

/**
 *
 * @author admin
 */
public class StudentDBContext extends DBContext<Student>{

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
     public ArrayList<Student> list(int id) {
            ArrayList<Student> students = new ArrayList<>();
        try {
            String sql="SELECT DISTINCT s.stdid,s.stdname\n" +
                    "                    FROM [Session] ses \n" +
                    "                    LEFT JOIN [Group] g ON g.gid = ses.gid\n" +
                    "                    INNER JOIN [Student_Group] sg ON sg.gid = g.gid\n" +
                    "                    INNER JOIN Student s ON sg.stdid = s.stdid\n" +
                    "                    WHERE g.gid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1,id);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Student s = new Student();
                s.setId(rs.getInt("stdid"));
                s.setName(rs.getString("stdname"));
                students.add(s);
            }
           return students;
            
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
