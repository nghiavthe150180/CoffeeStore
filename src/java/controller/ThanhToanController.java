package controller;


import dal.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.OrderDetails;
import model.Product;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author admin
 */
public class ThanhToanController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productId = Integer.parseInt( req.getParameter("id"));
        int quantity = Integer.parseInt( req.getParameter("quantity"));
        ProductDao pdDao = new ProductDao();
        Product product = pdDao.getProductById(productId);
        resp.setContentType("css/html");
        PrintWriter out = resp.getWriter();
        req.setAttribute("product", product);
        
        HttpSession session = req.getSession();
        List<OrderDetails> list = new ArrayList<OrderDetails>();
        if (session.getAttribute("Cart") == null) {
            list.add(new OrderDetails(productId, quantity));
            session.setAttribute("Cart", list);
        } else {
            list = (ArrayList<OrderDetails>) session.getAttribute("Cart");
            list.add(new OrderDetails(productId, quantity));
            session.setAttribute("Cart", list);
        }
//        List<Product> productList = new ArrayList<Product>();
//        for(OrderDetails order: list){
//            productList.add(new ProductDao().getProductById(productId));
//        }
//        Map<Integer, Product> map = new HashMap<>();
//        for(Product p: productList){
//            map.put(p.getId(), p);
//        }
//       req.setAttribute("productList", productList);
//       req.setAttribute("map", map);
//       
        
        List<String> productNames = new ArrayList<>();
        List<String> imagePaths = new ArrayList<>();
        List<Integer> prices = new ArrayList<>();

        for(OrderDetails orderDetail: list){
            String productName = new ProductDao().getProductById(orderDetail.getProductId()).getName();
            productNames.add(productName);
            
            String imagePath = new ProductDao().getProductById(orderDetail.getProductId()).getImage_url();
            imagePaths.add(imagePath);
            
            int price =  new ProductDao().getProductById(orderDetail.getProductId()).getPrice();
            prices.add(price);
        }
        
        req.setAttribute("productNames", productNames);
        req.setAttribute("imagePaths", imagePaths);
        req.setAttribute("prices", prices);
        
        req.getRequestDispatcher("thanhtoan.jsp").forward(req, resp);
        
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
}
}