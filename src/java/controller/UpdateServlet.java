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
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author admin
 */
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String suirName = req.getParameter("surname");
       String middleName = req.getParameter("middlename");
       String dob = req.getParameter("dob");
       String phonenumber = req.getParameter("phone");
       String psw = req.getParameter("password");
       HttpSession session = req.getSession();
       String userId = (String) req.getAttribute("userId");
       String sex = req.getParameter("sex");
       UserDao userDao = new UserDao();
       userDao.update(userId, suirName, middleName, phonenumber, dob, sex, psw);
    }
    
}
