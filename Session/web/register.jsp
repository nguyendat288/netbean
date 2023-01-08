<%-- 
    Document   : register
    Created on : Oct 6, 2022, 4:43:20 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <h1>Register Form</h1>
        <form action="logup">
            <p style="color :red">${requestScope.ms}</p>
            Username : <input type="type" name="username"><br>
            Password : <input type="type" name="password"><br>
            Confirm Password : <input type="type" name="rpassword"><br>
            <input type="submit" value="register" >
        </form>
    </body>
</html>
