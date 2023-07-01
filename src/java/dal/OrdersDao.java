/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Orders;

/**
 *
 * @author admin
 */

// public void insert(Student x) {
//     xSql = "insert into Student (rollno,name,mark) values (?,?,?)"; 
//     try {
//      ps = con.prepareStatement(xSql);
//      ps.setString(1, x.getRollno());
//      ps.setString(2, x.getName());
//      ps.setFloat(3, x.getMark());
//      ps.executeUpdate();
//      ps.close();
//     }     
//     catch(Exception e) {
//        e.printStackTrace();
//     }
//  }  
public class OrdersDao extends DBContext {
//    public void insert(Orders x) {
//       String xSql = "insert into Student (rollno,name,mark) values (?,?,?)";        
//        try {
//            PreparedStatement  ps = connection.prepareStatement(xSql);
//            ps.setString(1, x.getRollno());
//            ps.setString(2, x.getName());
//            ps.setFloat(3, x.getMark());
//            ps.executeUpdate();
//            ps.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
    public int insert(Orders x) {
        int result = 0;
        String xSql = "insert into Orders (UserID, OrderDate) values ( ? , ?)";        
        try {
            PreparedStatement ps = connection.prepareStatement(xSql);
            ps.setInt(1, x.getUserID());
            ps.setString(2, x.getOrderDate());
            result= ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public Orders getLatestOrder() {
        Orders x = null;
         Orders orders = new Orders();
        String sql = "SELECT TOP 1 *FROM Orders ORDER BY OrderID DESC";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            int orderId;
            int userId;
            String OrderDate;
            while (rs.next()) {
                orderId = rs.getInt("OrderID");                
                userId = rs.getInt("userID");
                OrderDate = rs.getString("OrderDate");
                x = new Orders(orderId, userId, OrderDate);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }
}
