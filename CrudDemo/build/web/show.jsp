<%-- 
    Document   : show.jsp
    Created on : Sep 28, 2022, 11:40:35 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1px solid black">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Dob</th>
                <th>Tien ich</th>
            </tr>
            <c:forEach items="${listST}" var="x">
                <tr>
                    <td>${x.id}</td>
                    <td>${x.name}</td>                   
                    <td><c:if test="${x.gender==1}">Male</c:if>
                        <c:if test="${x.gender==0}">Female</c:if>                 
                        </td>
                        <td>${x.dob}</td>
                    <td>
                        <a href="url">Update</a>
                        <a href="load?id=${x.id}">Delete</a>
                    </td>
                </tr></c:forEach>
        </table>  




    </body>
</html>
