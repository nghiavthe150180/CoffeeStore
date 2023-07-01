<%-- 
    Document   : Admin
    Created on : May 16, 2023, 8:25:33 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <%@include file="header.jsp" %>
    <link rel="stylesheet" href="style.css">
    <div id="admin" style ="padding-top: 90px; padding-bottom: 50px;" >
<button class="tab" data-page="UserTable.jsp">User</button> 
<button class="tab" data-page="ProductTable.jsp">Product</button>
<button class="tab" data-page="StoreList.html">Tab 3</button>
    </div>
<iframe id="page-frame"></iframe>  

<script>
const tabs = document.querySelectorAll(".tab");
tabs.forEach(tab => {
  tab.addEventListener("click", () => {
    const page = tab.dataset.page;    
    document.getElementById("page-frame").src = page;    
    tabs.forEach(tab => tab.classList.remove("active"));
    tab.classList.add("active");
  })
});  
</script>

</body>
</html>