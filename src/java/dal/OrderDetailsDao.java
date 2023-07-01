/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import model.OrderDetails;

/**
 *
 * @author admin
 */
public class OrderDetailsDao extends DBContext {
    public void insert(OrderDetails x) {
        String xSql = "insert into OrderDetails(OrderID, ProductID, Quantity) values ( ? , ? , ?)";        
        try {
            PreparedStatement ps = connection.prepareStatement(xSql);
            ps.setInt(1, x.getOrderId());
            ps.setInt(2, x.getProductId());
            ps.setInt(3, x.getQuantity());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
