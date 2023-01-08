<%-- 
    Document   : home
    Created on : Sep 29, 2022, 2:53:58 PM
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
        <h1>List of Categories</h1>
        <a href="new.jsp">AddNew</a>
        <table border="1px" width="50%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Describe</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.data}" var="c">
                <c:set var="id" value="${c.id}"/>
                <tr>
                    <td>${id}</td>
                    <td>${c.name}</td>
                    <td>${c.describe}</td>
                    <td>
                        <a href="#" onclick="doDelete('${id}')">Delete</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="update?id=${id}">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <script>
            function doDelete(id){
                if(confirm("are you sure delete id "+id+"?")){
                    window.location="delete?id="+id;
                }
            }
        </script>
    </body>
</html>
