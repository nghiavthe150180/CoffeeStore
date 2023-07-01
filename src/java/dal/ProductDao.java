/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author admin
 */
//
//String name, String description, String image_url, String category, int id, int category_id

public class ProductDao extends DBContext {
    public List<Product> getAll(){
        String sql = "select * from Product";
         List<Product> list = new ArrayList<>();
         try{
             PreparedStatement pst = connection.prepareStatement(sql);
             ResultSet rs = pst.executeQuery();
             while(rs.next()){
                 Product c = new Product(rs.getString("name"), rs.getString("description"), rs.getString("image_url"), rs.getInt("id"), rs.getInt("category_id"), rs.getInt("Price") );
                 list.add(c);
             }
         }
         catch(SQLException e){
             System.out.println(e);
         }
         return list;
    }
    
    public Product getProductById(int id){
        String sql = "Select * from Product where id = ?";
        try{
             PreparedStatement pst = connection.prepareStatement(sql);
             pst.setInt(1, id);
             ResultSet rs = pst.executeQuery();
             while(rs.next()){
                 Product c = new Product(rs.getString("name"), rs.getString("description"), rs.getString("image_url"), rs.getInt("id"), rs.getInt("category_id"), rs.getInt("price") );
                 return c;
             }
         }
         catch(SQLException e){
             System.out.println(e);
         }
            return null;
    }
}
