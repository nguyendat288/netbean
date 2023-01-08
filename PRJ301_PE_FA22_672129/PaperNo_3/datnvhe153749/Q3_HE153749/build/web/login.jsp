<%-- 
    Document   : login
    Created on : Nov 6, 2022, 11:28:22 AM
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
      <form action="login" method="post">
            <p style="color :red">${requestScope.ms}</p>
            Username : <input type="type" name="username"><br>
            Password : <input type="type" name="password"><br>
            <input type="submit" value="login" >
        </form>
    </body>
</html>
