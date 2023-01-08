<%-- 
    Document   : login
    Created on : Oct 20, 2022, 12:08:32 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" >
            <p style="color : red">${requestScope.ms}</p>
            Username : <input type="type" name="user">
            Password : <input type="password" name="pass">
            <input type="submit" value="Login">
        </form>
    </body>
</html>
