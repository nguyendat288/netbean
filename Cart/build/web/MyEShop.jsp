<%-- 
    Document   : MyEShop
    Created on : Oct 22, 2022, 3:33:45 PM
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
    <style>
        #bag{
            text-align: right;
            margin-right: 30px;
            margin-top : 30px;
        }
        table{
            border-collapse: collapse;
        }
    </style>
    <body>  
        <c:set var="size" value="${sessionScop.size}" />
        Hello ${sessionScope.account.name}
        <p id="bag"> <img src="data:image/png;base64,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" width="50" height="50" alt="alt"/>
            <a href="MyECart.jsp" > Mybag (${size}) items </a></p>
        <h1>The list product</h1>
        <form action="" name="f" method="post">
            Enter the number of items :
            <input type="number" name="num" value="1">

            <hr/>
            <table border="1px" width="40%">
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </tr>
                <jsp:useBean  id="db"  class="dal.ProductDAO" />
                <c:forEach items="${db.all}" var="p" >
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.quantity}</td>
                        <td>
                            <input type="submit" onclick="buy('${p.id}')" value="Buy item" >
                        </td>
                    </tr>  
                </c:forEach>

            </table>
        </form>
    </body>
    <script type="text/javascript">
        function buy(id){
            document.f.action="buy?id="+id;
            document.f.submit();
        } 
    </script>
</html>
