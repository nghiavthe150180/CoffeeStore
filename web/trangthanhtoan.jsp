<%-- 
    Document   : trangthanhtoan
    Created on : Jun 5, 2023, 6:01:46 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product" %>
<%@page import="dal.ProductDao" %>
<%@page  import="jakarta.servlet.http.HttpSession" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="trangthanhtoan.css">
    <title>Payment Page</title>
</head>

<body>
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
        <tbody id="product-table">
            <!-- Product rows will be populated by JavaScript -->
        </tbody>
    </table>
    <script>
//        const products = [
//            {
//                name: 'Product 1',
//                price: 10.00,
//                imageUrl: 'https://via.placeholder.com/100'
//            },
//            {
//                name: 'Product 2',
//                price: 20.00,
//                imageUrl: 'https://via.placeholder.com/100'
//            },
//            {
//                name: 'Product 3',
//                price: 15.00,
//                imageUrl: 'https://via.placeholder.com/100'
//            }
//        ];
            
            
           <% 
    HttpSession session1 = request.getSession();
    String cartString = (String) session1.getAttribute("cart");
    String[] items = null;
    
    if (cartString != null && !cartString.isEmpty()) {
        items = cartString.split(";");
    }
    
    if (items != null && items.length > 0) {
%>
const products = [
    <% for (String item : items) {
        String[] parts = item.split(",");
        int productId = Integer.parseInt(parts[0].split(":")[1].trim());

        ProductDao pdDao = new ProductDao();
        Product product = pdDao.getProductById(productId);
        DecimalFormat df = new DecimalFormat("#.00");
%>
{
    name: '<%= product.getName() %>',
    price: <%= df.format(product.getPrice()) %>,
    imageUrl: '<%= product.getImage_url() %>'
},
<% } %>
];
<% } else { %>
Your cart is empty
<% } %>

   
  

         
        function createProductRow(product) {
            const tr = document.createElement('tr');

            const imageTd = document.createElement('td');
            const image = document.createElement('img');
            image.src = product.imageUrl;
            image.alt = product.name;
            imageTd.appendChild(image);

            const nameTd = document.createElement('td');
            nameTd.textContent = product.name;

            const quantityTd = document.createElement('td');
            const quantityInput = document.createElement('input');
            quantityInput.type = 'number';
            quantityInput.value = 1;
            quantityInput.min = 1;
            quantityInput.className = 'quantity';
            quantityInput.addEventListener('change', updateTotal);
            quantityTd.appendChild(quantityInput);

            const priceTd = document.createElement('td');
            priceTd.className = 'price';
            priceTd.textContent = `$${'<c:out value="${df.format(product.price)}"/>'}`;


            tr.appendChild(imageTd);
            tr.appendChild(nameTd);
            tr.appendChild(quantityTd);
            tr.appendChild(priceTd);

            return tr;
        }

        function createTotalRow() {
            const tr = document.createElement('tr');
            tr.className = 'total-row';

            const totalLabelTd = document.createElement('td');
            totalLabelTd.colSpan = 3;
            totalLabelTd.className = 'total-price';
            totalLabelTd.textContent = 'Total Price:';

            const totalValueTd = document.createElement('td');
            totalValueTd.className = 'total';
            totalValueTd.textContent = '$0.00';

            tr.appendChild(totalLabelTd);
            tr.appendChild(totalValueTd);

            return tr;
        }

        function updateTotal() {
            const quantityInputs = document.querySelectorAll('.quantity');
            const priceCells = document.querySelectorAll('.price');
            const totalCell = document.querySelector('.total');

            let total = 0;

            for (let i = 0; i < quantityInputs.length; i++) {
                const quantity = parseInt(quantityInputs[i].value);
                const price = parseFloat(priceCells[i].textContent.substring(1));
                total += quantity * price;
            }

            totalCell.textContent = `$${total.toFixed(2)}`;
        }

        function initializeTable() {
            const productTable = document.getElementById('product-table');

            for (const product of products) {
                const productRow = createProductRow(product);
                productTable.appendChild(productRow);
            }

            const totalRow = createTotalRow();
            productTable.appendChild(totalRow);

            updateTotal(); // Initialize the total price
        }

        // Initialize the table when the script is loaded   
        initializeTable();
    </script>
</body>

</html>