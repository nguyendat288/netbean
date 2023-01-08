<%-- 
    Document   : change
    Created on : Oct 9, 2022, 12:31:37 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Change Form</h1>
        <form action="change">
            <p style="color :red">${requestScope.ms}</p>
            <input type="hidden" name="user" value="${sessionScope.account.account}">
            Old password : <input type="type" name="opass"><br>
            New Password : <input type="type" name="npass"><br>
            Confirm Password : <input type="type" name="rpass"><br>
            <input type="submit" value="Change" >
        </form>
    </body>
</html>
