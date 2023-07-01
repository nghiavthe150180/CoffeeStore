<%-- 
    Document   : menu-body
    Created on : May 24, 2023, 11:48:01 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Coffee Online Store</title>
    <link rel="stylesheet" href="menu-body.css">
    
</head>

<body>
    
    <main>
        <aside>
           
            <ul>
                <li><a href="#">Coffee Beans</a></li>
                <li><a href="#">Ground Coffee</a></li>
                <li><a href="#">K-Cups</a></li>
                <li><a href="#">Coffee Accessories</a></li>
            </ul>
        </aside>
        <hr>
        <section class="products">
            <c:forEach var="row" begin="0" end="${fn:length(list) / 3}">
                <div class="row">
                    <c:forEach var="col" begin="0" end="2">
                        <c:set var="index" value="${row * 3 + col}" />
                        <c:if test="${index < fn:length(list)}">
                            <c:set var="p" value="${list[index]}" />
                            <div class="product">
                                <img src="${p.image_url}" alt="Product">
                                <h2>${p.name}</h2>
                                <p>${p.description}</p>
                                <span class="price">$${p.price}</span>
                                <button><a href= "product?id=${p.getId()}">Add to cart</a></button>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </c:forEach>

            <!-- more rows of products here -->
        </section>
    </main>
</body>

</html>
