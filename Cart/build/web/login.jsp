<%-- 
    Document   : login
    Created on : Oct 6, 2022, 3:17:55 PM
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
        <h1>Form Log In</h1>
        <form action="login" method="get">
            <p style="color :red">${requestScope.ms}</p>
            Username : <input type="type" name="user"><br>
            Password : <input type="type" name="pass"><br>
            <input type="submit" value="login" >
        </form>
    </body>
</html>
