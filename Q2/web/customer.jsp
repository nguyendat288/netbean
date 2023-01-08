<%-- 
    Document   : customer
    Created on : Sep 22, 2022, 2:53:16 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form>
            Full name: <input type ="text" name="name"/><br/>
            Gender:  
            Male <input type="radio" name="gender" value="male" />   
            Female <input type="radio" name="gender" value="female" /><br/>
            Favourite color: Red<input type="checkbox" name="check" value="red"  />
            Yellow <input type="checkbox" name="check"  value="yellow"/>
            Chocolate <input type="checkbox" name="check"  value="chocolate"/><br/>
            <input type="submit" value="SUBMIT"/>
        </form> 
         <table border="1px" width="40%" style="text-align: center">
            <tr>
                <th>Fullname</th>
                <th>Gender</th>
                <th>Color</th>
            </tr>
           <%
            ArrayList<Student> st =  (ArrayList<Student>) request.getAttribute("ListSt");
            for(Student x : st){
            %>
            <tr>
                <td><%= x.getName()%></td>
               
                <td>
                    <img <%= (x.isGender()?"src='img/1.jfif'" : "src='img/2.jfif'") %>
                        height="30px" width="30px"/>
                </td>
                 <td><%= x.getColor()%></td>
            </tr>
            <%
            }
            %> 
            
        </table>
    </body>
</html>
