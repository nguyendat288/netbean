<%-- 
    Document   : student
    Created on : Sep 22, 2022, 5:25:19 PM
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
        <form action="student" method="get">
            Code :  <input type ="text" name="code"/><br/>
            Name :  <input type ="text" name="name"/><br/>
            Mark :  <input type ="text" name="mark"/><br/>           
            <input type="submit" value="SUBMIT"/>
        </form>         
        <table border="1px" width="40%" style="text-align: center">
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Mark</th>
                <th>Status</th>
            </tr>
            <c::forEach item="ListSt"
            </tr>   
            
        </table>
    </body>
</html>
