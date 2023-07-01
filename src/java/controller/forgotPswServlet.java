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
public class forgotPswServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");

        UserDao dao = new UserDao();
        User user = dao.forgotpsw(username, email);

        if (user == null) {
            req.setAttribute("error", "The username and password do not match any account in the database");
            req.getRequestDispatcher("ForgotPassword.jsp").forward(req, resp);
        }
        else{
             req.setAttribute("error", "ChangePasswpordSuccessfully, new password send to your email");
             req.getRequestDispatcher("ForgotPassword.jsp").forward(req, resp);
        }
        }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }
    
}
