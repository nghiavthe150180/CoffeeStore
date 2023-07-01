/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.http.HttpServlet;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author admin
 */
public class UserDao extends DBContext {
    public User check(String username, String psw) {
        String sql = "SELECT *\n"
                + "FROM [dbo].[user]\n"
                + "WHERE [user] = ? AND [password] = ?";

        // User(int id, String surname, String middle_name, String phone_number, String dob, String email, String sex, String password)
        try {
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, psw);
            
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                User  a = new User(rs.getInt("id"), rs.getString("surname"), rs.getString("middle_name"), rs.getString("phone_number"), rs.getString("dob"),  rs.getString("email"), rs.getString("sex"), rs.getString("password"), rs.getString("user"));
                return a;
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return null;
    }
    

     public User forgotpsw(String username, String email) {
        String sql = "SELECT *\n"
                + "FROM [dbo].[user]\n"
                + "WHERE [user] = ? AND [email] = ?";

        // User(int id, String surname, String middle_name, String phone_number, String dob, String email, String sex, String password)
        try {
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, email);
            
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                User  a = new User(rs.getInt("id"), rs.getString("surname"), rs.getString("middle_name"), rs.getString("phone_number"), rs.getString("dob"),  rs.getString("email"), rs.getString("sex"), rs.getString("password"), rs.getString("user"));
                return a;
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return null;
    }
     
    public User getUserById(String id){
        String sql = "select * from [dbo].[user] where [id] = ?";
          try {
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                User  a = new User(rs.getInt("id"), rs.getString("surname"), rs.getString("middle_name"), rs.getString("phone_number"), rs.getString("dob"),  rs.getString("email"), rs.getString("sex"), rs.getString("password"), rs.getString("user"));
                return a;
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return null;
    }
    
    public void update(String userId, String surname, String middlename, String phoneNumber, String dob, String sex, String psw)  {
        String xSql = "update [user] set surname=?, middle_name=?, phone_number=?, dob=?, password=?, sex=?  where id = ?;";
        try {            
            PreparedStatement ps = connection.prepareStatement(xSql);
            ps.setString(1, surname);
            ps.setString(2, middlename);
            ps.setString(3, phoneNumber);
            ps.setString(4, dob);
            ps.setString(5, psw);
            ps.setString(6,  sex);
            ps.setString(7, userId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
    
    
    
}
