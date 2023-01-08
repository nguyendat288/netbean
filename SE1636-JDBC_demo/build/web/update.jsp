<%-- 
    Document   : new
    Created on : Sep 29, 2022, 3:38:25 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update a category</h1>
        <c:set var="c" value="${requestScope.cate}"/>
        <form action="update" method="post">
            enter id:<input type="number" readonly name="id" value="${c.id}"/><br/>
            enter name:<input type="text" name="name" value="${c.name}"/><br/>
            enter describe:<input type="text" name="describe" value="${c.describe}"/><br/>
            <input type="submit" value="Update"/>
        </form>
    </body>
</html>
