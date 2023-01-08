<%-- 
    Document   : home-page
    Created on : Sep 19, 2022, 11:26:49 PM
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


    .changePas{
        padding-top: 150px;
        text-align: center;
    }
    
  </style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
  <div class="changePas" >
      <h1>Change Password</h1>
       <form action="change" >
           <p style="color :red">${requestScope.ms}</p>
           <p style="color :greenyellow">${sessionScope.ms1}</p>
            <p style="color :red" id="mess"></p>
           <table >
           <tr>
               <td>Old password : </td>
               <td><input type="type" name="opass"></td>
           </tr>
           <tr>
               <td>New password : </td>
               <td><input type="password" id="npass" name="npass"></td>
           </tr>
           <tr>
               <td>Confirm password : </td>
               <td><input type="password" id="rpass" name="rpass"></td>
           </tr>
            <input type="hidden" name="user" value="${sessionScope.account.account}">
            <tr>
                <td><input type="submit" value="Change" class="btn btn-warning" onclick="check()"></td>
                <td></td>
            </tr>
            </table>
            <br>
             
        </form>
            <script>
                fuction check(){
                    var npass = document.getElementById("npass").value;
                    var rpass = document.getElementById("rpass").value;
                    var mess = document.getElementById("mess");
                    if(npass.length!=0){
                       if(npass == rpass){
                           mess.textContent ="Password matchs";
                       }else{
                           mess.textContent ="Password don't matchs";
                       }
                    }
                }
            </script>
  </div>
  <!--Footer-->
         <jsp:include page="footer.jsp" ></jsp:include>

  <!--/.Footer-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
<!--  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
   Bootstrap tooltips 
  <script type="text/javascript" src="js/popper.min.js"></script>
   Bootstrap core JavaScript 
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
   MDB core JavaScript 
  <script type="text/javascript" src="js/mdb.min.js"></script>-->
  <!-- Initializations -->
 
</body>
        <script>
    // Animations initialization
  </script>
</html>
