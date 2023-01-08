<%-- 
    Document   : list
    Created on : Nov 6, 2022, 11:20:27 AM
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
        <table border = 1px>
            <tr>
                <th>Id</th>
                <th>Title</th>
                <th>Published Date</th>
                <th>is Open Access</th>
            </tr>
            <c:forEach items="${ListPaper}" var ="p">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.title}</td>
                    <td>${p.date}</td>
                    <td>
                        <c:if test="${p.open ==1}" >
                            <img src="img/open.png" alt="alt"/>
                        </c:if>
                    </td>
                   
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
