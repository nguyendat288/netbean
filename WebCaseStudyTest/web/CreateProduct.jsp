<%-- 
    Document   : home-page
    Created on : Sep 19, 2022, 11:26:49 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Material Design Bootstrap</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.min.css" rel="stylesheet">

        <script src="https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js"></script>
        <style type="text/css">
            html,
            body,
            header,
            .carousel {
                height: 60vh;
            }

            @media (max-width: 740px) {

                html,
                body,
                header,
                .carousel {
                    height: 100vh;
                }
            }

            @media (min-width: 800px) and (max-width: 850px) {

                html,
                body,
                header,
                .carousel {
                    height: 100vh;
                }
            }
            .user-select{
                padding: 0;
                list-style: none;
                display: flex !important;
                flex-direction: column !important;
                position: absolute;
                top: 100%;
                width: 100%;
                color: #000;
                background-color: #fff;
            }

            .user-select li{
                display: none
            }

            .user-select-first:hover .user-select li{
                display: block;
            }

            .user-select-first{
                position: relative !important;
            }
            .create{
                padding:150px;
            }

        </style>
    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="create" >
                <h1>Create Product</h1>
                <form action="product?action=create" method="post" >
                    <table >
                        <tr>
                            <td>Name Product : </td>
                            <td><input required type="text" name="name"></td>
                        </tr>

                        <tr>
                            <td>Image : </td>
                            <td><input required type="text" name="img"></td>
                        </tr>

                        <tr>
                            <td>Price: </td>
                            <td><input required type="number" name="price"></td>
                        </tr>

                        <tr>
                            <td>Quantity : </td>
                            <td><input required type="number" name="soluong"></td>
                        </tr>
                        <tr>
                            <td>Color : </td>
                            <td><input required type="text" name="color"></td>
                        </tr>
                        <tr>
                            <td>Size : </td>
                            <td><input required type="number" name="size"></td>
                        </tr>
                        <tr>
                            <td>Category : </td>
                            <td><select required name="category">
                                <c:forEach items="${ListCategory}" var="ca">
                                    <option value="${ca.id}">${ca.name}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Description : </td>
                        <td><textarea required="" id="description" name="description" rows="50" cols="200">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Create" class="btn btn-success"></td>
                    </tr>
                </table>
                <br>
                <script>
                    ClassicEditor
                            .create(document.querySelector('#description'), {

                            }).then(editor => {
                        window.editor = editor;
                    })
                            .catch(err => {
                                console.log(err.stack);
                            });

                    // Replace the <textarea id="editor1"> with a CKEditor 4
                    // instance, using default configuration.
//                    CKEDITOR.replace('description');
                </script>
            </form>
        </div>
        <!--Footer-->
        <jsp:include page="footer.jsp" ></jsp:include>

        <!--/.Footer-->

        <!-- SCRIPTS -->
        <!-- JQuery -->
        <!--  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
           Bootstrap tooltips 
          <script type="text/javascript" src="js/popper.min.js"></script>
           Bootstrap core JavaScript 
          <script type="text/javascript" src="js/bootstrap.min.js"></script>
           MDB core JavaScript 
          <script type="text/javascript" src="js/mdb.min.js"></script>-->
        <!-- Initializations -->

    </body>
    <script>
        // Animations initialization
    </script>
</html>
