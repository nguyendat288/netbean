<%-- 
    Document   : header
    Created on : Oct 13, 2022, 12:12:30 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shoes Store </title>
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
            .user-select{
                padding: 0;
                list-style: none;
                display: flex !important;
                flex-direction: column !important;
                position: absolute;
                top: 100%;
                width: 100%;
                color: #000;
                background-color: #fff;
            }

            .user-select li{
                display: none
            }

            .user-select-first:hover .user-select li{
                display: block;
            }

            .user-select-first{
                position: relative !important;
            }





        </style>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
            <div class="container">

                <!-- Brand -->
                <a class="navbar-brand waves-effect" href="/show" >
                    <strong class="blue-text">MDB</strong>
                </a>

                <!-- Collapse -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Links -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <!-- Left -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link waves-effect" href="/show">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>

                    </ul>

                    <!-- Right -->
                    <ul class="navbar-nav nav-flex-icons">
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="shoppingcart.jsp">
                                <c:if test="${sessionScope.size == null}"> 
                                    <span class="badge red z-depth-1 mr-1"> 0 </span>
                                </c:if>
                                <c:if test="${sessionScope.size != null}"> 
                                    <span class="badge red z-depth-1 mr-1"> ${sessionScope.size} </span>
                                </c:if>
                                <i class="fas fa-shopping-cart"></i>
                                <span class="clearfix d-none d-sm-inline-block"> Cart </span>
                            </a>
                        </li>
                        <li class="nav-item user-select-first">
                            <c:if  test="${sessionScope.account != null}">
                                <a  class="nav-link border border-light rounded waves-effect" >
                                    Hello ${sessionScope.account.fisrtName} ${sessionScope.account.lastName} 
                                </a>   </c:if>
                            <c:if test="${sessionScope.account == null}">
                            <li class="nav-item">
                                <a class="nav-link waves-effect" href="/login1" >LOG IN
                                </a>
                            </li>
                        </c:if>

                        <ul class="user-select navbar-nav">
                            <c:if test="${sessionScope.account != null}">
                                <li class="nav-item">
                                    <a class="nav-link border border-light rounded waves-effect" href="/profile">Profile</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account.role.id==1}">
                                <li class="nav-item">
                                    <a class="nav-link border border-light rounded waves-effect" href="/account">Manager Account</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account.role.id==1}">
                                <li class="nav-item">
                                    <a class="nav-link border border-light rounded waves-effect" href="/product">Manager Product</a>
                                </li>
                            </c:if>                           
                            <c:if test="${sessionScope.account != null}">
                                <li class="nav-item"> 
                                    <a class="nav-link border border-light rounded waves-effect" href="/order">Manager Order
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account.role.id==1}">
                                <li class="nav-item"> 
                                    <a class="nav-link border border-light rounded waves-effect" href="/dashBoard">Dash Board
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account != null}">
                                <li class="nav-item"> 
                                    <a class="nav-link border border-light rounded waves-effect" href="logout" >LOG OUT
                                    </a>
                                </li>
                            </c:if>

                        </ul>
                        </li>

                    </ul>

                </div>
            </div>
        </nav>
        <!-- Navbar -->



    </body>
</html>
