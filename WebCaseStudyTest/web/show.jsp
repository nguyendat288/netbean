<%-- 
    Document   : home-page
    Created on : Sep 19, 2022, 11:26:49 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </head>

    <body>
        <!--Main layout-->
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
            <main>
                <div class="container">

                    <!--Navbar-->
                    <nav class="navbar navbar-expand-lg navbar-dark mdb-color lighten-3 mt-3 mb-5">

                        <!-- Navbar brand -->
                        <span class="navbar-brand">Categories:</span>
                        <!-- Collapsible content -->
                        <div class="collapse navbar-collapse" id="basicExampleNav">
                            
                            <form action="/find" method="get" class="form-inline mr-auto">
                                <select style="width: 200px; padding: 13px 5px" name="cate">
                                <c:forEach items="${requestScope.ListCategory}" var="ca" >
                                    <option value="${ca.id}" ${cate1 == ca.id?"selected":""}>${ca.name}</option>
                                </c:forEach>
                            </select>
                            <input type="text" hidden name="action" value="findName">
                            <button type="submit" class="btn btn-info">Find</button>
                        </form>
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="/sortByName">Sort By Name</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/sortByPrice">Sort By Price</a>
                                </li>
                            </ul>

                        <form action="/search" method="get" class="form-inline">
                            <div class="md-form my-0">
                                <input class="form-control mr-sm-2" name="findName" type="text" placeholder="Search" aria-label="Search">
                                <input type="text" hidden name="action" value="findName">
                            </div>
                            <button type="submit" class="btn btn-info">Find</button>
                        </form>
                    </div>
                    <!-- Collapsible content -->
                </nav>
                <!--/.Navbar-->
                <!--====================================================================================-->
                <!--Section: Products v.3-->
                 <form action="" name="f" method="post">
                      <h1 style="color:chocolate">Top Product of Month</h1>
                       <hr>
                    <section class="text-center mb-4" >
                        <!--Grid row-->
                       
                       
                        <div class="row wow fadeIn">
                            <!--Grid column-->
                            <c:forEach items="${ListTopTrend}" var="p" varStatus="loop" >
                                <div class="col-lg-3 col-md-6 mb-4">
                                    <!--Card-->
                                    <div class="card">

                                        <!--Card image-->
                                        <div class="view overlay">
                                            <img src="${p.pro.img}" style="height: 200px" class="card-img-top" alt="">

                                            <a>
                                                <div class="mask rgba-white-slight"></div>
                                            </a>
                                        </div>

                                        <div class="card-body text-center">
                                            <h5>${p.pro.category.name}</h5>
                                            <a href="/detail?action=detail&id=${p.pro.id}" class="grey-text">
                                                <h6>${p.pro.nameProduct}</h6>
                                            </a>

                                            <h5 class="font-weight-bold blue-text">
                                                <strong>${p.pro.price}</strong>
                                            </h5>
                                            <button class="btn btn-primary btn-md my-0 p" type="submit" onclick="buy('${p.pro.id}')">Add to cart
                                                <i class="fas fa-shopping-cart ml-1"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </section>
                
                <hr>
                 
               <h1 style="color:chocolate">Other Product</h1>
                    <section class="text-center mb-4" >
                        <!--Grid row-->
                        <div class="row wow fadeIn">
                            <!--Grid column-->
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
                    </section>
                </form>
                <!--=================================================================================-->
                <!--Pagination-->
                <c:set var="page" value="${sessionScope.page}" />
                <nav class="d-flex justify-content-center wow fadeIn">
                    <ul class="pagination pg-blue">
                        <c:forEach begin="${1}" end="${requestScope.numberpage}" var="i" >
                            <li class="page-item">
                                <a class="page-link" href="show?page=${i}">${i}</a>
                            </li> 
                        </c:forEach>


                    </ul>
                </nav>
                <!--Pagination-->

            </div>
        </main>
        <!--Main layout-->
        <jsp:include page="footer.jsp" ></jsp:include>
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
