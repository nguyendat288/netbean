<%-- 
    Document   : tron
    Created on : Sep 18, 2022, 12:11:43 PM
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
        <h1>Bai  1 </h1>
        <form action="tinh" method="post">
            Enter radius : <input type="text" name="r">
            <input type="submit" name="SUBMIT">
        </form>
        <%
            if(request.getAttribute("dt") != null){
//            double s = (double)request.getAttribute("dt");
            String s = (String)request.getAttribute("dt");
            %>
                        <h1>Dien tich la : <%= s%></h1>
    <%
        }
            %>
    </body>
</html>
