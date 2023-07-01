/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class OrderDetails {
    int detailId; 
    int orderId;
    int productId; 
    int quantity; 

    public int getDetailId() {
        return detailId;
    }

    public void setDetailId(int detailId) {
        this.detailId = detailId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public OrderDetails() {
    }

    public OrderDetails( int productId, int quantity) {
        this.productId = productId;
        this.quantity = quantity;
    }

    public OrderDetails(int detailId, int orderId, int productId, int quantity) {
        this.detailId = detailId;
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
    }

    public OrderDetails(int detailId, int productId, int quantity) {
        this.detailId = detailId;
        this.productId = productId;
        this.quantity = quantity;
    }
    
    
    
}
