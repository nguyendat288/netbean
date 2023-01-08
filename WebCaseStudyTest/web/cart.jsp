<%-- 
    Document   : MyECart
    Created on : Oct 23, 2022, 2:54:28 PM
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
    </head>
      <style>
          a{
              text-decoration: none;
          }
        table{
            text-align: center;
            margin-left: 100px;
            border-collapse: collapse;
        }
        .cart1{
            padding-top: 150px;
        }
    </style>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
          <!--Carousel Wrapper-->
        <div id="carousel-example-1z" class="carousel slide carousel-fade pt-4" data-ride="carousel">

            <!--Indicators-->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                <li data-target="#carousel-example-1z" data-slide-to="2"></li>
            </ol>
            <!--/.Indicators-->

            <!--Slides-->
            <div class="carousel-inner" role="listbox">

                <!--First slide-->
                <div class="carousel-item active">
                    <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%282%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                        <!-- Mask & flexbox options-->
                        <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                            <!-- Content -->
                            <div class="text-center white-text mx-5 wow fadeIn">
                                <h1 class="mb-4">
                                    <strong>Welcome to Shoes Store</strong>
                                </h1>

                                <p>
                                    <strong>Best choice for you </strong>
                                </p>

                                <p class="mb-4 d-none d-md-block">
                                    <strong>The leading reputable shoe selling website in Vietnam.
Take care of your feet</strong>
                                </p>

                                <a target="_blank" href="#" class="btn btn-outline-white btn-lg">Welcome to Shoes Store
                                    
                                    <i class="fas fa-graduation-cap ml-2"></i>
                                </a>
                            </div>
                            <!-- Content -->

                        </div>
                        <!-- Mask & flexbox options-->

                    </div>
                </div>
                <!--/First slide-->

                <!--Second slide-->
                <div class="carousel-item">
                    <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                        <!-- Mask & flexbox options-->
                        <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                            <!-- Content -->
                            <div class="text-center white-text mx-5 wow fadeIn">
                                <h1 class="mb-4">
                                    <strong>Welcome to Shoes Store</strong>
                                </h1>

                                <p>
                                    <strong>Best choice for you </strong>
                                </p>

                                <p class="mb-4 d-none d-md-block">
                                    <strong>The leading reputable shoe selling website in Vietnam.
Take care of your feet.</strong>
                                </p>

                                <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start
                                    free tutorial
                                    <i class="fas fa-graduation-cap ml-2"></i>
                                </a>
                            </div>
                            <!-- Content -->

                        </div>
                        <!-- Mask & flexbox options-->

                    </div>
                </div>
                <!--/Second slide-->

                <!--Third slide-->
                <div class="carousel-item">
                    <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                        <!-- Mask & flexbox options-->
                        <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                            <!-- Content -->
                            <div class="text-center white-text mx-5 wow fadeIn">
                                <h1 class="mb-4">
                                    <strong>Welcome to Shoes Store</strong>
                                </h1>

                                <p>
                                    <strong>Best choice for you </strong>
                                </p>

                                <p class="mb-4 d-none d-md-block">
                                    <strong>The leading reputable shoe selling website in Vietnam.
Take care of your feet</strong>
                                </p>

                                <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start
                                    free tutorial
                                    <i class="fas fa-graduation-cap ml-2"></i>
                                </a>
                            </div>
                            <!-- Content -->

                        </div>
                        <!-- Mask & flexbox options-->

                    </div>
                </div>
                <!--/Third slide-->

            </div>
            <!--/.Slides-->

            <!--Controls-->
            <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <!--/.Controls-->

        </div>
        <!--/.Carousel Wrapper-->
        <div class="cart1">
            <h2 style="text-align: center">My Cart</h2>
        <table border="1px" width="80%">
            <tr>
                <th>NO</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Money</th>
                <th>Action</th>                
            </tr>
            <c:set var="o" value="${sessionScope.cart}" />
            <c:set var="t" value="0"  />
            <c:forEach  items="${o.items}" var="i" >
                <c:set var="t" value="${t+1}"/>              
            <tr>
                <td>${t}</td>
                <td>${i.product.nameProduct}</td>
                <td>
                    <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                    <input type="number" readonly="" value="${i.quantity}" />
                    <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                </td>
                <td>
                    <fmt:formatNumber pattern="##.##" value="${i.price}"/>
                </td>
                <td> <fmt:formatNumber pattern="##.##" value="${i.price*i.quantity}"/></td>
                <td>
                    <form action="process" method="post">
                        <input type="hidden" name="id" value="${i.product.id}">
                        <input type="submit" value="Return item">
                    </form>
                </td>
            </tr>
            </c:forEach>
        </table>
            <hr/>
            <form action="checkout" method="post">
                <input type="submit" value="Checkout">
            </form>
            <h2 style="color: chocolate"><a href="/show" >Click me continue shopping </a></h2>
            </div>
              <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>
