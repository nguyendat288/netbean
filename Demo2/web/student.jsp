<%-- 
    Document   : student
    Created on : Sep 15, 2022, 5:07:46 PM
    Author     : dell
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Student" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ðây là danh sách sinh viên </h1>
         <table class="table" border="2px">
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Dob</th>
            <th>Gender</th>
        </tr>
        <%
            ArrayList<Student> st =  (ArrayList<Student>) request.getAttribute("ListSt");
            for(Student x : st){
            %>
            <tr>
                <td><%= x.getId()%></td>
                <td><%= x.getName()%></td>
                <td><%= x.getDob()%></td>
                <td>
                    <img <%= (x.isGender()?"src='img/1.jfif'" : "src='img/2.jfif'") %>
                        height="30px" width="30px"/>
                </td>
            </tr>
            <%
            }
            %>
    </table>
    </body>
</html>
