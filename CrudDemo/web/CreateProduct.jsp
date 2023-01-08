<%-- 
    Document   : CreateProduct
    Created on : Sep 29, 2022, 2:49:45 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Thêm sản phẩm</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <h2>Table Create Product</h2>
            <form action="/demo/product?action=create" method="post">

                Enter the name product :     <input placeholder="Enter the name product" name="nameproduct"><br><br>
                Enter the price product :    <input type="number" placeholder="Enter the price" name="price"><br><br>
                Enter the quantity product : <input type="number" placeholder="Enter the soluong" name="soluong"><br><br>
                Enter the color product :    <input placeholder="Enter the color" name="color"><br><br>
                Enter the loaisp product :   <input type="number" placeholder="Enter the loaisp" name="loaisp"><br><br>

                <button type="submit" class="btn btn-success">Create Product</button>
            </form>
        </div>
        <a href="/demo/product" type="submit" class="btn btn-success">Home</a>
    </body>
</html>
