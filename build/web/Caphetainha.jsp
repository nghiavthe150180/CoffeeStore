<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Website Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <%@include file="header.jsp" %>
    <div class="main-section">
        <h1>Ca Phe Tai Nha</h1>
        <p>Discover our delicious selection of home-brewed coffee.</p>
        <div class="product-grid">
            <c:forEach items="${requestScope.data}" var="c">
            <div class="product">
                <img src="${c.image_url}" alt="Product 1">
                <h2>${c.name}</h2>
                <p>${c.description}</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
            </c:forEach>
<!--            <div class="product">
                <img src="path/to/image2.jpg" alt="Product 2">
                <h2>Product 2</h2>
                <p>Description of Product 2</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
            <div class="product">
                <img src="path/to/image3.jpg" alt="Product 3">
                <h2>Product 3</h2>
                <p>Description of Product 3</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
             Add more products here 
        </div>-->
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>