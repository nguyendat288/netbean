<%-- 
    Document   : first
    Created on : Sep 15, 2022, 4:45:39 PM
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
        <h1>HE153749</h1>
        <form action="getfirst" method="post">      
        <p> Get first : </p> 
        <input type="type" name="name"> letter(s)
        <br/>
        <br/> 
        <input type="submit" value="GET" />       
        </form>
        <br>
        <h3>${requestScope.ms}</h3>
    </body>
</html>
