/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.ProductDao;
import dal.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import model.Product;
import model.User;

/**
 *
 * @author admin
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("username");
        String pasword = req.getParameter("password");
        UserDao dao = new UserDao();
        User data = dao.check(user, pasword);
        if(data == null){
            req.setAttribute("error", "Username and Password are not correct");
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
        else{
            HttpSession session = req.getSession();
            menuServlet menuServlet = new menuServlet();
            session.setAttribute("userId", data.getId());
            menuServlet.doGet(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }
    
      public static void main(String[] args) {
        UserDao u = new UserDao();
        User data = u.check("user_2", "2817836F");
          System.out.println(data);
        
}
      
}
