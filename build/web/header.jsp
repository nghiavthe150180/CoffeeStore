<%-- 
    Document   : header
    Created on : May 2, 2023, 3:34:00 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
	<title>My Website</title>
	
	<script>
		function showDropdown1() {
			var dropdown = document.getElementById("dropdown1");
			if (dropdown.style.display === "none") {
				dropdown.style.display = "block";   
			} else {
				dropdown.style.display = "none";
			}
		}
                
                function showDropdown() {
			var dropdown = document.getElementById("dropdown");
			if (dropdown.style.display === "none") {
				dropdown.style.display = "block";   
			} else {
				dropdown.style.display = "none";
			}
		}
                
                function submitFormWithImageClick() {
                    // Get a reference to the form element using its id
                    const form = document.getElementById('myForm');
                   // Submit the form
                   form.submit();
                }

                
             
	</script>
        <link rel ="stylesheet" href="style.css" />
</head>

<body>
	<header>
		<div class="header-container">
			<div class="logo">
				<img src="path/to/logo.png" alt="Logo">
			</div>
			<nav>
				<ul>
					<li><a href="#">Cà phê</a></li>
					<li><a href="#">Trà</a></li>
					<li><a href="#">Cửa hàng</a></li>
                                        <li><a href="#">Menu</a></li>
					<li><a href="#">Admin</a></li>
				</ul>
			</nav>
			<div class="user-info">
				<a href="#"><img
						src="data:image/png;base64,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"
						onclick="showDropdown1()" alt="User Image"></a>
						
				<div id="dropdown1">
					<a href="#">Tra cứu đơn hàng</a><br>
                                        <c:choose>
                                            <c:when test="${not empty sessionScope.userId}">
                                                <!-- User is logged in -->
                                                <a href="Login.jsp">Dang xuat</a><br>
                                                <a href="AccountDetail?id=${sessionScope.userId}" >Thong tin tai khoan </a> 
                                            </c:when>
                                            <c:otherwise>
                                                <!-- User is not logged in -->
                                                <a href="login.jsp">Dang nhap</a>
                                            </c:otherwise>
                                        </c:choose>
                                </div>
                               
                                <div class="cart">
                                    <a href="javascript:void(0)" onclick="event.preventDefault(); submitFormWithImageClick()">
                                        <img src="https://thumbs.dreamstime.com/b/shopping-cart-icon-blue-color-design-perfect-use-print-media-web-stock-images-commercial-any-kind-project-209472475.jpg"
                                             alt="Store Image">
                                    </a>

                                    
                                    <span id="cart-count" class="cart-count"></span>
                                </div>
                        </div>
                </div>
        </header>
</body>

</html>