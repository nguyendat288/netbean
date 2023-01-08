<%-- 
    Document   : home
    Created on : Oct 6, 2022, 3:30:30 PM
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
    <body>
        <script type="text/javascript">
            function show(){
                var x=document.getElementById("profile");
                if(x.style.display =="none"){
                    x.style.display = "block";
                }else {
                    x.style.display = "none";
                }
            }
        </script>
        
        
<!--         <h1>Hello ${sessionScope.account.account}</h1>
        ${(sessionScope.account.role == 1) ?"ban la admin" : "ban la user" }
        <br>-->
        
        
        <h3>
            <c:if test="${sessionScope.account == null}">
                <a href="login">Login</a> &nbsp;&nbsp;&nbsp;
                <a href="register.jsp">Register</a>                 
            </c:if>
            <c:if test="${sessionScope.account!= null}">
                <a href="#" onclick="show()">Profile</a>  &nbsp;&nbsp;&nbsp; 
                <a href="change.jsp">Change Password</a>  &nbsp;&nbsp;&nbsp; 
                <a href="logout">Log Out</a>                  
            </c:if>
                
        </h3>
<!--        day la profile =======================================================  -->


        <div id="profile" style="display : none">
            Username : ${sessionScope.account.account}
            <br><!-- comment -->
            Role : ${sessionScope.account.role}
        </div>
        
<!--        <a>
        <input type="submit" value  ="Log Out"></a>-->
    </body>
</html>
