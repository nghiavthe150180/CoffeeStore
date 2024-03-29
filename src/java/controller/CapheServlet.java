/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Product;

/**
 *
 * @author admin
 */

public class CapheServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductDao dao = new ProductDao();
        List<Product> data = dao.getAll();
        req.setAttribute("data", data);
        req.getRequestDispatcher("Caphetainha.jsp").forward(req, resp);
       
    }
  
//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        List<Product> data = dao.getAll();
//        for (Product a : data) {
//            System.out.println(a);
//        }
//    }
}
