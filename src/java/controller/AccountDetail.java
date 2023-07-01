/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.User;
/**
 *
 * @author admin
 */
public class AccountDetail extends HttpServlet   {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String id = (String) req.getParameter("id");
            UserDao userDao = new UserDao();
            User u = userDao.getUserById(id);
            req.setAttribute("c", u);
            req.getRequestDispatcher("AccountDetail.jsp").forward(req, resp);
    }
   
}
