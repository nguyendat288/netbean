<%-- 
    Document   : tinh
    Created on : Sep 20, 2022, 5:08:10 PM
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
        <h1>A Sample Calculator</h1>
        <form>
            Enter Operand1 : <input type="type" name="num1"><br>
            Enter Operand2 : <input type="type" name="num2"><br>
            Select Operation: <select name="opera">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
            <br>
            <input type="submit" value="SUBMIT">
            
        </form>
        <h2>
            <jsp:useBean id="c" class="model.Math"/>
            <jsp:setProperty name="c" property="*"/>
            <jsp:getProperty name="c" property="result"/>
        </h2>
    </body>
</html>
