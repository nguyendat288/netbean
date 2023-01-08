<%-- 
    Document   : login
    Created on : Oct 6, 2022, 3:17:55 PM
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
          <jsp:include page="menu.jsp"></jsp:include>
          <h1>Log in page</h1>
        <form action="login" method="post">
            <p style="color :red">${requestScope.ms}</p>
            Username : <input type="type" name="user"><br>
            Password : <input type="type" name="pass"><br>
            <input type="submit" value="login" >
        </form>
    </body>
</html>
