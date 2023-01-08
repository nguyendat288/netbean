<%-- 
    Document   : profile
    Created on : Oct 17, 2022, 1:01:31 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
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
            .profile2{
                padding-top: 70px;
                width: 30%;
                float:left;
            }
            .profile2 img{
                width:450x;
                height: 450px;

            }
            h1{
                padding-left: 50px;
            }
            .profile0{
                float:right;
                width: 60%;
                padding-top: 120px;
                margin-left: 100px;
                margin-right: 10px;
            }
            .profile1{
                font-size: 15px;
                padding-left: 50px;
            }
            .profile3{
                border: 1px;
            }

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>


            <!--          ====================================================================-->
            <div class="profile2">
                <img src="https://kingshoes.vn/data/upload/media/giay-sneaker-chinh-hang-tphcm-tai-king-shoes-album-bo-suu-tap-16.jpg"  />
            </div>

            <div class="profile0">
                <h1 style="color:blue">Profile</h1>
                <hr>

                <table class="profile3">
                    <tr>
                        <td  class="profile1" >Account : </td>
                        <td  class="profile1" >${sessionScope.account.account}</td>
                </tr>
                <tr>
                    <td  class="profile1" >Password : </td>
                    <td  class="profile1" >***********</td>
                    <td  class="profile1" ><a href="changePass.jsp">Change Password</a></td>
                </tr>
                <tr>
                    <td  class="profile1" >First Name : </td>
                    <td  class="profile1" >${sessionScope.account.fisrtName}</td>
                </tr>
                <tr>
                    <td  class="profile1" >Last Name : </td>
                    <td  class="profile1" >${sessionScope.account.lastName}</td>
                </tr>
                <tr>
                    <td  class="profile1" >Email : </td>
                    <td  class="profile1" >${sessionScope.account.email}</td>
                </tr>
                <tr>
                    <td  class="profile1" >Phone :</td>
                    <td  class="profile1" >${sessionScope.account.phone}</td>
                </tr>
                <tr>
                    <td  class="profile1" > Address :</td>
                    <td  class="profile1" >${sessionScope.account.address}</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>

    </body>
</html>
