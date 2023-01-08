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
            <main>
                <div class="container">

                    <!--Navbar-->
                    <nav class="navbar navbar-expand-lg navbar-dark mdb-color lighten-3 mt-3 mb-5">

                        <!-- Navbar brand -->
                        <span class="navbar-brand">Categories:</span>

                        <!-- Collapse button -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
                                aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <!-- Collapsible content -->
                        <div class="collapse navbar-collapse" id="basicExampleNav">

                            <!-- Links -->
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">All
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Shirts</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Sport wears</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Outwears</a>
                                </li>

                            </ul>
                            <!-- Links -->

                            <form class="form-inline">
                                <div class="md-form my-0">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                                </div>
                            </form>
                        </div>
                        <!-- Collapsible content -->
                    </nav>
                    <!--/.Navbar-->
                    <!--====================================================================================-->
                    <!--Section: Products v.3-->
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
                                        <a href="/detail?action=detail&index=${loop.index}" class="grey-text">
                                            <h6>${product.nameProduct}</h6>
                                        </a>

                                        <h5 class="font-weight-bold blue-text">
                                            <strong>${product.price}</strong>
                                        </h5>
                                        <button class="btn btn-primary btn-md my-0 p" type="submit">Add to cart
                                            <i class="fas fa-shopping-cart ml-1"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </section>
                <!--=================================================================================-->
                <!--Pagination-->
                <nav class="d-flex justify-content-center wow fadeIn">
                    <ul class="pagination pg-blue">

                        <!--Arrow left-->
                        <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>

                        <li class="page-item active">
                            <a class="page-link" href="#">1
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">3</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">4</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">5</a>
                        </li>

                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!--Pagination-->

            </div>
        </main>
        <!--Main layout-->
        <jsp:include page="footer.jsp" ></jsp:include>
        <!--/.Footer-->

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
