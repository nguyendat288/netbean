<%-- 
    Document   : list
    Created on : Oct 20, 2022, 11:32:19 AM
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
        <form action="search" id="f1" method="post">
            Account 
            <select name="user" onchange="document.getElementById('f1').submit()">
                <option  value="0" >---Select---</option>
                <c:forEach items="${requestScope.list1}" var="d" >
                    <option value="${d.username}"> ${d.displayname} </option>
                </c:forEach>                   
            </select>
            <input type="submit" value="Search">
            </form>
            <table border="1px">
                <tr>
                    <th>Member ID</th>
                    <th>NAME</th>
                    <th>DOB</th>
                    <th>Gold Member</th>
                </tr>
                <c:forEach items="${requestScope.list}" var="e">
                    <tr>
                        <td>${e.mid}</td>
                        <td>${e.mname}</td>
                        <td>${e.mdob}</td>
                        <td>
                            <c:if test="${e.mGold == 1}">Yes</c:if>
                            <c:if test="${e.mGold == 0}">No</c:if>
                        </td>
                    </tr>
                    
                </c:forEach>
            </table>
            
    </body>
</html>
