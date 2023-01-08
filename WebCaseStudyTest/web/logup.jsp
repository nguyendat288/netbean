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
        <title>Form log up shoes store</title>
        <link rel="stylesheet" href="css/reset.css"/>
        <link rel="stylesheet" href="css/logup.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    </head>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <body>
        <div id="swapper">
            <form action="register" id="form-login">
                <h1 class="form-heading">Form Log Up</h1>
                <div class="form-group">
                    <i class="far fa-user"></i>
                    <input class="form-input" required type="text" id="acc" pattern="^[0-9a-zA-Z]{5,20}" title="more than 4 character and less than 20 character" value="${requestScope.acc}" name="account" placeholder="Enter the account">
                </div> 
                 <p style="color : red">${requestScope.msAcc}</p>               
                <div class="form-group">
                    <i class="fas fa-key"></i>
                    <input class="form-input" type="password" required id="pass" pattern="^[0-9a-zA-Z]{6,20}" title="more than 6 character and less than 20 character" value="${requestScope.pass}" name="password" placeholder="Enter the password">
                </div>
                 <div class="form-group">
                    <input class="form-input" type="text" required id="fn" value="${requestScope.fisrtname}" name="fisrtname" placeholder="Enter the first name">
                 </div>
                 <div class="form-group">
                    <input class="form-input" type="text" required="" id="ln" value="${requestScope.lastname}" name="lastname" placeholder="Enter the last name">
                 </div>
                 <div class="form-group">
                     <input class="form-input" type="text" required="" value="${requestScope.phone}" id="phone" pattern="(84|0[3|5|7|8|9])+([0-9]{8})\b" title="Example:0388888888" name="phone" placeholder="Enter the phone">
                </div> 
                <p style="color : red">${requestScope.msPhone}</p>
                <div class="form-group">
                    <input class="form-input" type="text" required="" value="${requestScope.email}" id="email" pattern="^[_A-Za-z0-9-\+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})$"  title="Example : abc@gmail.com" name="email" placeholder="Enter the email">
                </div>
                <p style="color : red">${requestScope.msEmail}</p>
                 <div class="form-group">
                    <input class="form-input" type="text" required="" value="${requestScope.address}" id="address" name="address" placeholder="Enter the address">
                </div>
                <input type="submit" value="Log Up" class="form-submit"><br><!-- comment -->
                <br>
                <a href="/login.jsp">
                    <input value="Log in" style="text-align: center" class="form-submit"></a>             
            </form>

        </div>

    </body>
 <script>
             function changePass() {
                   

        </script>
</html>