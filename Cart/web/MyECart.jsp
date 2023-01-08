<%-- 
    Document   : MyECart
    Created on : Oct 23, 2022, 2:54:28 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <style>
          a{
              text-decoration: none;
          }
        table{
            border-collapse: collapse;
        }
    </style>
    <body>
        <h2>My Cart</h2>
        <table border="1px" width="40%">
            <tr>
                <th>NO</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Money</th>
                <th>Action</th>                
            </tr>
            <c:set var="o" value="${sessionScope.cart}" />
            <c:set var="t" value="0"  />
            <c:forEach  items="${o.items}" var="i" >
                <c:set var="t" value="${t+1}"/>
                
                
            <tr>
                <td>${t}</td>
                <td>${i.product.name}</td>
                <td>
                    <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                    <input type="number" readonly="" value="${i.quantity}" />
                    <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                </td>
                <td>
                    <fmt:formatNumber pattern="##.##" value="${i.price}"/>
                </td>
                <td> <fmt:formatNumber pattern="##.##" value="${i.price*i.quantity}"/></td>
                <td>
                    <form action="process" method="post">
                        <input type="hidden" name="id" value="${i.product.id}">
                        <input type="submit" value="Return item">
                    </form>
                </td>
            </tr>
            </c:forEach>
        </table>
            <hr/>
            <form action="checkout" method="post">
                <input type="submit" value="Checkout">
            </form>
            <h2 style="color: chocolate"><a href="MyEShop.jsp" >Click me continue shopping </a></h2>
    </body>
</html>
