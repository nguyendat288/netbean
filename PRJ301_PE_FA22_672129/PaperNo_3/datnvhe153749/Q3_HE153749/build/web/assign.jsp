<%-- 
    Document   : assign
    Created on : Nov 6, 2022, 12:07:38 PM
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
        <form action="action" >
            Paper id : ${p.id}
            Title : ${p.title}
            Published Date : ${p.date}
            Open Acess : <c:if test="${p.open == 1}">Yes</c:if>
            <c:if test="${p.open == 0}">No</c:if>
        </form>
    </body>
</html>
