<%-- 
    Document   : info
    Created on : Nov 6, 2022, 9:25:44 AM
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
        <table border=1px>
            <tr>
                <td>Student ID :</td>
                <td>${requestScope.st}</td>
            </tr>
            <tr>
                <td>Paper Code : </td>
                <td>${requestScope.pp}</td>
            </tr>
        </table>
    </body>
</html>
