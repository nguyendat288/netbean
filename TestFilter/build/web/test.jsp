<%-- 
    Document   : test
    Created on : Sep 27, 2022, 3:38:19 PM
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
        <form action="test" method="post">
            <div>
                Enter the name : <input type="text" name="name" placeholder="Enter the name" />
            </div>
            <input type="submit" value="SUBMIT"/>
        </form>
        <h2>hello ${requestScope.a}</h2>
    </body>
</html>
