<%-- 
    Document   : info
    Created on : Oct 14, 2022, 12:00:49 AM
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
         <h1>Profile Page</h1>
         <h3>
             UserName : ${sessionScope.account.username}<br><!-- comment -->
         <c:if test="${sessionScope.account.role==1}">
             CHAO MUNG BAN DEN VOI KENH BAN HANG
         </c:if>
            <c:if test="${sessionScope.account.role==2}">
             CHAO MUNG BAN KHACH HANG
         </c:if>  
         </h3>
    </body>
</html>
