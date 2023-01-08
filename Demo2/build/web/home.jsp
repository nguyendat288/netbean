<%-- 
    Document   : home.jsp
    Created on : Sep 18, 2022, 2:41:10 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Example for JSP</h1>
        <h2 style="color: chocolate">
            <% String name ="Vu Thi Teo ";
            out.println("Hello "+ name );
            out.println("<br/> So Pi : "+Math.PI);
            double r= 2;     
            DecimalFormat f = new DecimalFormat("##.##");
            %>
        </h2>
        <h2>So PI viet lan 2 : </h2>  
        <%= Math.PI%>
<!--        <h2>Dien tich la : <%= f.format(Math.PI*r*r) %></h2>-->

        <h1>Bai 1 : </h1>
        <form>
            enter radius : <input type="text" name="r"><br>
            <input type="submit" value="SUBMIT">
        </form>
        <%
        if(request.getParameter("r")!= null){
        String r1 = request.getParameter("r");
        double a ;  
        try{
        a= Double.parseDouble(r1);
        double s= a*a*Math.PI;
        %>
         <h2>Dien tich la : <%= f.format(s)%></h2>
        <%
            }catch(Exception e ){
           System.out.print(e);
         }
            }    
        %>
        <br>
        <jsp:forward page="hcn.jsp">
            <jsp:param name="name" value="To an An"/>
        </jsp:forward>
    </body>
</html>
