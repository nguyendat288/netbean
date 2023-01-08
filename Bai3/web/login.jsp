<%-- 
    Document   : login
    Created on : Oct 18, 2022, 4:43:09 PM
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
        <form action="add">            
            User : <input type="type" name="user"><br>
            Password : <input type="password" name="pass"><br>
            Group : <br>
            <c:forEach items="${requestScope.data}" var="g" >
              <input type="checkbox" name="group" value="${g.groupid}">${g.name}<br>   
            </c:forEach>
               <input type="submit" value="ADD"><br>
        </form>
        
    </body>
</html>
