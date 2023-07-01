/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.OrderDetailsDao;
import dal.OrdersDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import model.Orders;
import java.util.Date;
import java.util.List;
import model.OrderDetails;
import sun.security.x509.X500Name;

/**
 *
 * @author admin
 */
public class thanhtoanServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Date date = new Date();
        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
        String d = fm.format(date);
        HttpSession session = req.getSession();
        List<OrderDetails> list = (List<OrderDetails>) session.getAttribute("Cart");
        OrderDetails OrderDetails = new OrderDetails();
        OrderDetailsDao orderDetailsDao = new OrderDetailsDao();
        int userId = (int)  session.getAttribute("userId");
        Orders orders = new Orders(userId, d );
        OrdersDao OrdersDao = new OrdersDao();
         OrdersDao.insert(orders);
        int OrderID = OrdersDao.getLatestOrder().getOrderID();
        for(OrderDetails a: list){
            OrderDetails detailNew = new OrderDetails();
            detailNew.setOrderId(OrderID);
            detailNew.setProductId(a.getProductId());
            detailNew.setQuantity(a.getQuantity());
            orderDetailsDao.insert(detailNew);
        }
      
        
    }
   
    
}
