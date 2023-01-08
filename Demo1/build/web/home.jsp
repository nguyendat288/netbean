<%-- 
    Document   : home
    Created on : Sep 22, 2022, 3:59:48 PM
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
        <form action="new" method="get">
            Number 1 :  <input type="type" name="n1" value="${param.n1}"><br><br>
            Number 2 :  <input type="type" name="n2" value="${param.n2}"><br><br>
            Number 3 :  <input type="type" name="n3" value="${param.n3}"><br><br>
            Gender   :  <input type="radio" ${param.gender?"checked":" "} name="gender" value="true">Male
            <input type="radio" name="gender" ${!param.gender?"checked":" "}  value="false">Female<br>
         
            Color  : <input type="checkbox" name="color" value="red">red
             <input type="checkbox" name="color" value="blue">blue
            <input type="checkbox" name="color" value="yellow">yellow
            <br><!-- comment -->
               <input type="submit" value="SUBMIT">
        </form>
        <h2>
            Sum : ${param.n1 + param.n2 +param.n3 }  <br>
            Averge :  ${(param.n1 + param.n2 +param.n3)/3 }  <br>
            Area : ${Math.PI*param.n1*param.n1}  <br>  
            Images : <img src="${param.gender?'images/male.png':'images/female.png'}" width="30px" height="30px"/><br>
            Color : ${requestScope.color}
            
        </h2><br>
        <h2>
            <c::forEach items="${requestScope.color}" var="i">
            
            </c::forEach>
        </h2>
    </body>
</html>
