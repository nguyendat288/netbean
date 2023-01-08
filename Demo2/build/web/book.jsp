<%-- 
    Document   : book
    Created on : Sep 20, 2022, 4:46:51 PM
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
        <form action="action" method="post">
            Enter code : <input type="type" name="code"><br/>
            Enter name : <input type="type" name="name"><br/>
            Enter number of Pages : <input type="type" name="numPage"><br/>
            Enter Sold Out : <input type="checkbox" value="true"/><br/>
            <input type="submit" name="SUBMIT">
            
            
        </form>
        
        
        <h1>Example for java bean </h1>
        <jsp:useBean id="b" class="model.Book" scope="page" ></jsp:useBean>
           <jsp:getProperty name="b" property="*"/>
        
<!--        <jsp:setProperty name="b" property="code" value="12"/>
        <jsp:setProperty name="b" property="name" value="Nguyexn Dat"/>
        <jsp:setProperty name="b" property="numPage" value="400"/>
        <jsp:setProperty name="b" property="soldOut" value="False"/>
        <br/>-->
        <p> day la get Property
            <br>
        <jsp:getProperty name="b" property="name"/>
        <p>day la b.
        <h2>${b}</h2>
    </body>
</html>
