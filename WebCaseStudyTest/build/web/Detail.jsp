<%-- 
    Document   : product-page
    Created on : Sep 19, 2022, 11:27:14 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Material Design Bootstrap</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.min.css" rel="stylesheet">
    </head>
     <style type="text/css">
            html,
            body,
            header,
            .carousel {
                height: 60vh;
            }

            @media (max-width: 740px) {

                html,
                body,
                header,
                .carousel {
                    height: 100vh;
                }
            }

            @media (min-width: 800px) and (max-width: 850px) {

                html,
                body,
                header,
                .carousel {
                    height: 100vh;
                }
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
            <!--Main layout-->
            <main class="mt-5 pt-4">
                <div class="container dark-grey-text mt-5">

                    <!--Grid row-->
                    <div class="row wow fadeIn">

                        <!--Grid column-->
                        <div class="col-md-6 mb-4">

                            <img src="${requestScope.pro.img}" class="img-fluid" alt="">

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6 mb-4">

                        <!--Content-->
                        <div class="p-4">

                            <h2 style="color : blue"> ${pro.nameProduct}
                            </h2>
                            <p class="lead font-weight-bold">Brand : ${pro.category.name} </p>
                            <p class="lead font-weight-bold">Amount : ${pro.soluong} </p>
                            <p class="lead font-weight-bold">Color : ${pro.color} </p>
                            <p class="lead font-weight-bold">Price : ${pro.price} VND</p>
                            <p class="lead font-weight-bold">Description : </p>
                            <p>${pro.description} </p>
                            <form class="d-flex justify-content-left" action="" name="f" method="post">
                                <!-- Default input -->
                                <input type="number" value="1" hidden="" aria-label="Search" class="form-control" style="width: 100px">
                                <button class="btn btn-primary btn-md my-0 p" type="submit" onclick="buy('${pro.id}')">Add to cart
                                    <i class="fas fa-shopping-cart ml-1"></i>
                                </button>

                            </form>

                        </div>
                        <!--Content-->

                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->
                <hr>
                  <h3 class="text-center">Related Product</h3>   
                <div class="row">
                   
                    <c:forEach items="${ListProduct}" var="product" varStatus="loop" >
                    <div class="col-lg-3 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="${product.img}" style="height: 200px" class="card-img-top" alt="">

                                <a>
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>

                            <div class="card-body text-center">
                                <h5>${product.category.name}</h5>
                                <a href="/detail?action=detail&id=${product.id}" class="grey-text">
                                    <h6>${product.nameProduct}</h6>
                                </a>

                                <h5 class="font-weight-bold blue-text">
                                    <strong>${product.price}</strong>
                                </h5>
                                <button class="btn btn-primary btn-md my-0 p" type="submit" onclick="buy('${product.id}')">Add to cart
                                    <i class="fas fa-shopping-cart ml-1"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </div>
                
                <!--      <div class="col-lg-3 col-md-6 mb-4">
                
                            Card
                            <div class="card">
                
                              Card image
                              <div class="view overlay">
                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg" class="card-img-top"
                                  alt="">
                                <a>
                                  <div class="mask rgba-white-slight"></div>
                                </a>
                              </div>
                              Card image
                
                              Card content
                              <div class="card-body text-center">
                                Category & Title
                                <a href="" class="grey-text">
                                  <h5>Shirt</h5>
                                </a>
                                <h5>
                                  <strong>
                                    <a href="" class="dark-grey-text">Denim shirt
                                      <span class="badge badge-pill danger-color">NEW</span>
                                    </a>
                                  </strong>
                                </h5>
                
                                <h4 class="font-weight-bold blue-text">
                                  <strong>120$</strong>
                                </h4>
                
                              </div>
                              Card content
                
                            </div>
                            Card
                
                          </div>-->
        </main>
        <!--Main layout-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--/.Footer-->
        <script type="text/javascript">
            function buy(id) {
                document.f.action = "buy?id=" + id;
                document.f.submit();
            }
        </script>
        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Initializations -->
        <script type="text/javascript">
          // Animations initialization
          new WOW().init();

        </script>
    </body>

</html>
