/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author admin
 */

//OrderID]
//      ,[UserID]
//      ,[OrderDate]
//  FROM [CoffeeStore].[dbo].[Orders]
public class Orders {
    int OrderID;
    int UserID;
    String OrderDate;

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(String OrderDate) {
        this.OrderDate = OrderDate;
    }

    public Orders(int OrderID, int UserID, String OrderDate) {
        this.OrderID = OrderID;
        this.UserID = UserID;
        this.OrderDate = OrderDate;
    }

    public Orders(int UserID, String OrderDate) {
        this.UserID = UserID;
        this.OrderDate = OrderDate;
    }
    
    
    
    public Orders() {
    }
    
    
}
