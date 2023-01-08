<%-- 
    Document   : shoppingcart
    Created on : Oct 26, 2022, 9:04:04 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/cart.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>      
            <!--            ===========================================================================================-->
            <div class="card">
                <div class="row">
                    <div class="col-md-8 cart">
                        <div class="title">
                            <div class="row">
                                <div class="col"><h4><b>Shopping Cart</b></h4></div>
                            </div>
                        </div>    
                    <c:forEach var="i" value="${ListOrderDetail}" >

                        <div class="row border-top border-bottom">
                            <div class="row main align-items-center">
                                <div class="col-2"><img class="img-fluid" src="${i.product.img}"></div>
                                <div class="col">
                                    <div class="row text-muted">${i.product.category.name}</div>
                                    <div class="row">${i.product.nameProduct}</div>
                                </div>
                                <div class="col">
                                  
                                    <a class="border" href="#" type="number" readonly /> ${i.quantity}
                                   
                                </div>
                                <div class="col">

                                    <fmt:formatNumber pattern="##.##" value="${i.price*i.quantity}"/> VND

                                </div>
                                <div class="col">

                                    <span class="close"> <form action="process" method="post">
                                            <input type="hidden" name="id" value="${i.product.id}"> 
                                            <input type="submit" value="&#10005">
                                        </form></span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                    <div class="back-to-shop"><a href="/show">&leftarrow;</a><span class="text-muted">Back to shop</span></div>
                </div>
                <div class="col-md-4 summary">
                    <div><h5><b>Summary</b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="padding-left:20px;">ITEMS ${sessionScope.size}</div>
                        <div class="col text-right">${sessionScope.totalMN}</div>
                    </div>
                    <form>
                        <p>SHIPPING</p>
                        <select><option class="text-muted">Free Ship</option></select><br>
                        <p>GIVE CODE</p>
                        <input id="code" name="code" placeholder="Enter your code">
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">TOTAL PRICE</div>
                        <div class="col text-right">${sessionScope.totalMN}</div>
                    </div>
                    <form action="checkout" method="post">
                        <button class="btn" type="submit">CHECKOUT</button>
                    </form>

                </div>
            </div>
        </div>

    </body>
</html>
    