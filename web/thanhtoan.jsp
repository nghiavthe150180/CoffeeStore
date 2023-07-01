<%-- 
    Document   : thanhtoan
    Created on : Jun 24, 2023, 8:35:31 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page  import="model.Product" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
    .quantity-input {
    display: inline-block;
    padding: 2px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

.quantity-input input {
    width: auto;
    padding: 5px;
    border: none;
    font-size: inherit;
    text-align: center;
}

        body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

img {
    max-width: 100px;
    height: auto;
}

.total {
    margin-top: 20px;
    text-align: right;
}

label {
    font-weight: bold;
}

.pay-btn {
    display: block;
    width: 100%;
    padding: 10px;
    margin-top: 20px;
    background-color: #4caf50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.pay-btn:hover {
    background-color: #45a049;
}

    </style>
    <script src="script.js"></script>
    <script>
function calculateTotal() {
  
let total = 0;
  
document.querySelectorAll("tbody tr").forEach(tr => {
  
let price = parseFloat(tr.querySelector("td:last-child").textContent);
let quantity = parseInt(tr.querySelector("td:nth-child(3)").textContent);
total += price * quantity;
  
})

document.getElementById("totalAmount").textContent = "$" + total.toFixed(2);
}

window.onload = function(){
calculateTotal(); 
};
    </script>
</head>
<body>
    <div class="container">
        <h1>Payment Page</h1>
        <table>
            <thead>
                <tr>
                    <th>Product Image</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
            </thead>
        
             
            <tbody>
                <c:forEach items="${sessionScope.Cart}" var="c" varStatus="status" >
                    <tr>
                        <td><img src="${requestScope.imagePaths[status.index]}" alt="Product Image"></td>
                        <td>${requestScope.productNames[status.index]}</td>
                        <td>${c.quantity}</td>
                        <td> ${c.quantity * requestScope.prices[status.index]} </td>
                    </tr>   
                </c:forEach>
            </tbody>
        </table>

        <div class="total">
            <label>Total Amount:</label>
            <span id="totalAmount">$39.97</span>
        </div>
        <form action="hoantat">
            <button  onclick="confirm('Dat hang thanh cong')" class="pay-btn">Pay Now</button>
        </form>

    </div>
</body>
</html>

