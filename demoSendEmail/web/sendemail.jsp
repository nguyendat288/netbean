<%-- 
    Document   : sendemail
    Created on : Nov 22, 2022, 9:30:59 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2>Information</h2>
                    <form action="/send" method="post">
                        <div class="form-group">
                            <label>To : </label>
                            <input class="form-control" type="type" name="to">
                        </div>
                        <div class="form-group">
                            <label>Subject : </label>
                            <input class="form-control" type="type" name="sub">
                        </div>
                        <div class="form-group">
                            <label>Content : </label>
                            <textarea class="form-control" rows="3" name="content"></textarea>
                        </div>
                        <input type="submit" value="Send">
                        <input type="reset" value="Cancel"> 
                    </form>
                </div>
            </div>
            
        </div>
    </body>
</html>
