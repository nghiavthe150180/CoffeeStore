<%@page import="model.Product" %>
<%@page import="dal.ProductDao" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <script>
        let cartTotal = 0;

        function updateTotal(option) {
            let price = ${requestScope.p.getPrice()}; // Base price
            if (option == "medium") {
                price = price + 15000;
            } else if (option == "large") {
                price = price + 20000;
            }

            // Update price on page
            document.querySelector(".total-price").innerText = price + "?";
            
        }

        function addToCart() {
            cartTotal++;
            document.getElementById("cart-count").textContent = cartTotal;
            let quantityInput = document.getElementById("quantity");
            let quantity = parseInt(quantityInput.value, 10);
//            cartTotal += quantity;
            quantityInput.value = quantity + 1;
        }
    </script>
</head>
<body>
    <%@include file="header.jsp" %>
    <div class="product1">     
            <div class="product1-image">
                <img src="${requestScope.p.getImage_url()}" alt="Coffee">
            </div>
            <div class="product1-info">
                <h1>${requestScope.p.getName()}</h1>
                <p>Cold brew coffee with fresh milk</p>
                <form id="myForm" method="POST" action="Thanhtoan?id=${requestScope.p.getId()}" >

                    <div class="options">
                        <h2>Sizes:</h2>
                        <h3>
                            <select name="size" onchange="updateTotal(this.value)">
                                <option value="small">Small</option>
                                <option value="medium">Medium</option>
                                <option value="large">Large</option>
                            </select>
                            <h2>Type:</h2>
                            <select name="type">
                                <option value="hot">Hot</option>
                                <option value="iced">Iced</option>
                            </select>
                            <h2>Extras:</h2>
                            <input type="checkbox" name="extra" value="vanilla"> Vanilla syrup  <br>
                            <input type="checkbox" name="extra" value="caramel"> Caramel drizzle <br>
                            <input type="checkbox" name="extra" value="whipped cream"> Whipped cream <br>
                            <h2>Quantity</h2>
                            <input type="number" name="quantity" min="1"  id="quantity" value="0">
                            </div>
                </form>
                <h2 class="total-price" ">$ ${requestScope.p.getPrice()}</h2>
                <button onclick="event.preventDefault(); addToCart()">Add to cart</button>
            </div>
    </div>
    
</body>
</html>