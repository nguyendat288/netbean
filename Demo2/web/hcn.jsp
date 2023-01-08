<%-- 
    Document   : hcn
    Created on : Sep 16, 2022, 9:42:10 AM
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
        <form action="tinh"  method="post">
        <h1>Hinh chu nhat</h1>
        go vao chieu dai 
        <input type="type" name="cd">
        <br><!-- comment -->
        go vao chieu rong 
        <input type="type" name="cr">
        <br>
        <input type="checkbox"  name="chuvi" > chu vi
        <input type="checkbox"  name="dt" > dien tich
        <br>
        <br>
        <input type="submit" value="Tinh toan " /> 
        </form>
        <h3>${requestScope.ms}</h3>
<!--        param tu home.jsp-->
        <hr/>
        Hello ${param.name} 
        <hr style="color:chocolate" />
        <jsp:include page ="tron.jsp"></jsp:include>
        
    </body>
</html>
