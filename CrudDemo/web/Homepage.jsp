<%-- 
    Document   : Homepage
    Created on : May 26, 2022, 4:54:42 PM
    Author     : VAN ANH
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">

    <title>Metronic Shop UI</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta content="Metronic Shop UI description" name="description">
    <meta content="Metronic Shop UI keywords" name="keywords">
    <meta content="keenthemes" name="author">

    <meta property="og:site_name" content="-CUSTOMER VALUE-">
    <meta property="og:title" content="-CUSTOMER VALUE-">
    <meta property="og:description" content="-CUSTOMER VALUE-">
    <meta property="og:type" content="website">
    <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
    <meta property="og:url" content="-CUSTOMER VALUE-">

    <link rel="shortcut icon" href="favicon.ico">

    <!-- Fonts START -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
    <!-- Fonts END -->

    <!-- Global styles START -->          
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Global styles END --> 

    <!-- Page level plugin styles START -->
    <link href="assets/pages/css/animate.css" rel="stylesheet">
    <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
    <!-- Page level plugin styles END -->

    <!-- Theme styles START -->
    <link href="assets/pages/css/components.css" rel="stylesheet">
    <link href="assets/pages/css/slider.css" rel="stylesheet">
    <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
    <link href="assets/corporate/css/style.css" rel="stylesheet">
    <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
    <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
    <link href="assets/corporate/css/custom.css" rel="stylesheet">
    <!-- Theme styles END -->
    <!-- CSS-->
    <style>
        <!--slider-->
        .jk-slider{
            width:100%;
        }
        /*          Hero Headers        */
        /********************************/
        .hero {
            position: absolute;
            top: 80%;
            left: 50%;
            z-index: 3;
            color: #fff;
            text-align: center;
            text-transform: uppercase;
            text-shadow: 1px 1px 0 rgba(0,0,0,.75);
            -webkit-transform: translate3d(-50%,-50%,0);
            -moz-transform: translate3d(-50%,-50%,0);
            -ms-transform: translate3d(-50%,-50%,0);
            -o-transform: translate3d(-50%,-50%,0);
            transform: translate3d(-50%,-50%,0);
        }
        .hero h1 {
            font-size: 6em;    
            font-weight: bold;
            margin: 0;
            padding: 0;
        }

        .fade-carousel .carousel-inner .item .hero {
            opacity: 0;
            -webkit-transition: 2s all ease-in-out .1s;
            -moz-transition: 2s all ease-in-out .1s; 
            -ms-transition: 2s all ease-in-out .1s; 
            -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s; 
        }
        .fade-carousel .carousel-inner .item.active .hero {
            opacity: 1;
            -webkit-transition: 2s all ease-in-out .1s;
            -moz-transition: 2s all ease-in-out .1s; 
            -ms-transition: 2s all ease-in-out .1s; 
            -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s;    
        }
    </style>
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
    <jsp:include page="header.jsp"></jsp:include>
        <!-- BEGIN SLIDER -->
        <section class="jk-slider">
            <div id="carousel-example" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                <c:forEach begin="1" end="${CountCB}"var="i">
                    <li data-target="#carousel-example" data-slide-to="${i}"></li>
                </c:forEach>
                    
                </ol>

                <div class="carousel-inner">
                    <div class="item active">
                        <a href="#"><img src="assets\corporate\img\logos\Logo.png" style="width:350px;height:310px"/></a>
                        <div class="hero">
                            <hgroup style="color: #001b19">
                                <h1>Welcome Online Shop !!</h1>        
                                <h3> ai rảnh thì  </h3>
                            </hgroup>

                        </div>
                    </div>
                <c:forEach items="${listBanner}" var="x">
                    <div class="item">
                        <div style="text-align: center;">
                            <a href="#" style="display: "><img src="${x.cbannerImg}" style="width:842px;height:310px"/></a>
                        </div>
                        <div class="hero">
                            <hgroup>
                                <h1>${x.cbannerTitle}</h1>        
                                <h3>${x.cbannerdesc} !!!</h3>
                            </hgroup>

                        </div>
                    </div>
                    </c:forEach>
                </div>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>

        </section>
        <!-- END SLIDER -->

        <div class="main">
            <div class="container">
                <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
                <div class="row margin-bottom-40">
                    <!-- BEGIN SALE PRODUCT -->
                    <div class="col-md-12 sale-product">
                        <h2>New Arrivals</h2>
                        <div class="owl-carousel owl-carousel5">
                        <c:forEach items="${listTop5}" var="o">
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src= "${o.url}" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="${o.url}" class="btn btn-default fancybox-button">Zoom</a>
                                        </div>
                                    </div>
                                    <h3><a href="productdetail?pid=${o.productID}&sid=${o.subID}">${o.productName}</a></h3>
                                    <div class="pi-price"><fmt:formatNumber pattern="##.#" value="${o.salePrice}"/></div>
                                    <a onclick="addTocartAsync(${o.productID})" class="btn btn-default add2cart">Add to cart</a>
                                    <div class="sticker sticker-sale"></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- END SALE PRODUCT -->
        </div>
        <!-- END SALE PRODUCT & NEW ARRIVALS -->

        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40 ">
            <!-- BEGIN SIDEBAR -->
            <div class="sidebar col-md-3 col-sm-4">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <c:forEach items="${listC}" var="c">
                        <li class="list-group-item clearfix dropdown active">
                            <a href="javascript:void(0);" class="collapsed">
                                <i class="fa fa-angle-right"></i>
                                ${c.cate_name}

                            </a>
                            <ul class="dropdown-menu" style="display:block;">
                                <c:forEach items="${listS}" var="s">
                                    <c:if test="${c.cate_id == s.cate_id}">
                                        <li class="list-group-item dropdown clearfix active">
                                            <a href="subcategory?sid=${s.subcate_id}" style="color: #000" class="collapsed">${s.subcate_name} </a>                                
                                        </li>
                                    </c:if>
                                </c:forEach>

                            </ul>
                        </li>
                    </c:forEach>
                </ul>

            </div>
            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            <div class="col-md-9 col-sm-8">
                <h2>Three items</h2>
                <div class="row product-list">
                    <c:forEach items="${listSell}" var="p">
                        <!-- PRODUCT ITEM START -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img style="max-width: auto;height: 400px" src="${p.p.url}" class="img-responsive" alt="Berry Lace Dress">
                                    <div>
                                        <a href="${p.p.url}" class="btn btn-default fancybox-button">Zoom</a>
                                    </div>
                                </div>
                                <h3><a href="productdetail?pid=${p.p.productID}&sid=${p.p.subID}">${p.p.productName}</a></h3>
                                <a href="#"><fmt:formatNumber pattern="##.#" value="${p.p.salePrice}"/></a></h3>
                                <a onclick="addTocartAsync(${p.p.productID})" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </div>
                    </c:forEach>                 
                    <!-- PRODUCT ITEM END -->
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN TWO PRODUCTS & PROMO -->
          
        <!-- END TWO PRODUCTS & PROMO -->
    </div>
</div>

<!-- BEGIN BRANDS -->
<div class="brands">
    <div class="container">
        <div class="owl-carousel owl-carousel6-brands">
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/canon.jpg" alt="canon" title="canon"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/esprit.jpg" alt="esprit" title="esprit"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/gap.jpg" alt="gap" title="gap"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/next.jpg" alt="next" title="next"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/puma.jpg" alt="puma" title="puma"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/zara.jpg" alt="zara" title="zara"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/canon.jpg" alt="canon" title="canon"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/esprit.jpg" alt="esprit" title="esprit"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/gap.jpg" alt="gap" title="gap"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/next.jpg" alt="next" title="next"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/puma.jpg" alt="puma" title="puma"></a>
            <a href="shop-product-list.html"><img src="assets/pages/img/brands/zara.jpg" alt="zara" title="zara"></a>
        </div>
    </div>
</div>
<!-- END BRANDS -->

<jsp:include page="footer.jsp"></jsp:include>

<!-- BEGIN fast view of a product -->
<div id="product-pop-up" style="display: none; width: 700px;">
    <div class="product-page product-pop-up">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-3">
                <div class="product-main-image">
                    <img src="assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                </div>
                <div class="product-other-images">
                    <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src=""></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model4.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model5.jpg"></a>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-9">
                <h2>Cool green dress with red bell</h2>
                <div class="price-availability-block clearfix">
                    <div class="price">
                        <strong><span>$</span>47.00</strong>
                        <em>$<span>62.00</span></em>
                    </div>
                    <div class="availability">
                        Availability: <strong>In Stock</strong>
                    </div>
                </div>
                <div class="description">
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat Nostrud duis molestie at dolore.</p>
                </div>
                <div class="product-page-options">
                    <div class="pull-left">
                        <label class="control-label">Size:</label>
                        <select class="form-control input-sm">
                            <option>L</option>
                            <option>M</option>
                            <option>XL</option>
                        </select>
                    </div>
                    <div class="pull-left">
                        <label class="control-label">Color:</label>
                        <select class="form-control input-sm">
                            <option>Red</option>
                            <option>Blue</option>
                            <option>Black</option>
                        </select>
                    </div>
                </div>
                <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                    </div>
                    <button class="btn btn-primary" type="submit">Add to cart</button>
                    <a href="shop-item.html" class="btn btn-default">More details</a>
                </div>
            </div>

            <div class="sticker sticker-sale"></div>
        </div>
    </div>
</div>
<!-- END fast view of a product -->

<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>
<script src="assets/plugins/respond.min.js"></script>  
<![endif]-->
<script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
<script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
<script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
<script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

<script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
<script src="assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
<script type="text/javascript">
                                    jQuery(document).ready(function () {
                                        Layout.init();
                                        Layout.initOWL();
                                        Layout.initImageZoom();
                                        Layout.initTouchspin();
                                        Layout.initTwitter();
                                    });
</script>
<script>
    /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;

    for (i = 0; i < dropdown.length; i++) {
        dropdown[i].addEventListener("click", function () {
            this.classList.toggle("active");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "block";
            }
        });
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
    function addTocartAsync(productId) {
        axios.get('add-to-cart-async', {
            params: {
                productId: productId
            }
        }).then((response) => {
            //lay data thanh cong
            document.getElementById("cart_number").innerHTML = response.data + " items";
            //cap nhat view
        })
    }
</script>
<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
