<%-- 
    Document   : login
    Created on : Oct 3, 2022, 9:50:41 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form login shoes store</title>
        <link rel="stylesheet" href="css/reset.css"/>
        <link rel="stylesheet" href="css/login.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    </head>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script src="js/login.js"></script>
    <body>
        <div id="swapper">
            <form action="/login1" id="form-login" method="post">
                <h1 class="form-heading" style="font-family: ">Form Login</h1>
                <p style="color : red">${requestScope.ms2}</p>
<!--                <p style="display: none" id="checkNull">* Not empty </p>-->
                <div class="form-group">
                    <i class="far fa-user"></i>                   
                    <input class="form-input" type="text" id="account" name="account" placeholder="Enter the account">                  
                </div>
                <div class="form-group">
                    <i class="fas fa-key"></i>
                    <input class="form-input" type="password" id="password" name="password" placeholder="Enter the password">
                    <p></p>
                </div>
                <input type="submit" value="Log In"  class="form-submit"><br><!-- comment -->
                <br>
                <a href="abcxyx" class="forgot" style="color : white">Forgot the password ?</a>
                <a href="/logup.jsp">
                    <input value="Log up" style="text-align: center" class="form-submit"></a>                 
            </form>
        </div>

    </body>

</html>
