<%-- 
    Document   : list
    Created on : Oct 4, 2022, 5:00:57 PM
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
        <h1>List of Employees in a Department</h1>
        <form action="list" id="f1" method="post">
            Department 
            <select name="did" onchange="document.getElementById('f1').submit()">
                <option  value="0" >---Select---</option>
                <c:forEach items="${requestScope.list1}" var="d" >
                    <option value="${d.id}"> ${d.name} </option>
                </c:forEach>                   
            </select>
            </form>
            <table border="1px">
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>DOB</th>
                    <th>GENDER</th>
                    <th>DEPARTMENT</th>
                </tr>
                <c:forEach items="${requestScope.list}" var="e">
                    <tr>
                        <td>${e.id}</td>
                        <td>${e.name}</td>
                        <td>${e.dob}</td>
                        <td>${e.gender}</td>
                        <td>${e.department.name}</td>
                    </tr>
                    
                </c:forEach>
            </table>
            
        
    </body>
</html>
