<%-- 
    Document   : ShowProduct
    Created on : Sep 29, 2022, 2:49:35 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    <title>Danh sách sản phẩm </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    .check{
       padding: 150px;
    }
    .check table{
      width: 100%
    }
    img{
        width: 50px;
        height: 50px;
    }
    .right{
        float:right;
        padding-right: 10px;
    }
    
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
    <div class="check">
    <h2>Show Product</h2>
    <a href="/product?action=create" class="btn btn-success">Create</a>
    <a href="/createCategory?action=create" class="btn btn-success">Create Caregory</a>
    <br>
    <div class="right">
        <form action="/product" method="get">
        <input type="text" placeholder="Enter the name product you want to find" name ="findName">
         <input type="text" hidden name="action" value="findName">
        <button type="submit" class="btn btn-info">Find by name</button>
    </form>
        </div>
    <br>
    <br>
    <table class="table" border="2px">
        <thead>
        <tr>
            <th>Product Name</th>
            <th>Image</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Color</th>
            <th>Size</th>
            <th>Category</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ListProduct}" var="product" varStatus="loop">
            <tr>
                <td>${product.nameProduct}</td>
                <td><img src="${product.img}"/>   </td>
                <td>${product.price}</td>   
                <td>${product.soluong}</td>
                <td>${product.color}</td>
                <td>${product.size}</td>
                <td>${product.category.name}</td>
                <td><a href="/product?action=edit&id=${product.id}" class="btn btn-warning">Edit</a></td>
                <td><a href="/product?action=delete&index=${loop.index}" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <br>
    <br>
</div>
    </div>
        <jsp:include page="footer.jsp" ></jsp:include>

</body>
</html>
