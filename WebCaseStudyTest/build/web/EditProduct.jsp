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
  <title>Edit Product</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.min.css" rel="stylesheet">
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
            .edit{
                padding:150px;  
            }
            input, textarea{
                width: 100%;
            }       
            
 
  </style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
  <div class="edit" >
      <div class="container">
      <h1>Edit Product</h1>
       <form method="post">

           <table border="1px" width="100%">
            <input value="${pro1.id}" hidden type="text" name="idsp">   
           <tr>
               <td>Name Product : </td>
               <td><input value="${pro1.nameProduct}" type="text" name="name"></td>
           </tr>
          
           <tr>
               <td>Image : </td>
               <td><input value="${pro1.img}" type="text" name="img"></td>
           </tr>
          
           <tr>
               <td>Price: </td>
               <td><input value="${pro1.price}" type="number" name="price"></td>
           </tr>
          
           <tr>
               <td>Quantity : </td>
               <td><input value="${pro1.soluong}" type="number" name="soluong"></td>
           </tr>
           <tr>
               <td>Color : </td>
               <td><input value="${pro1.color}" type="text" name="color"></td>
           </tr>
           <tr>
               <td>Size : </td>
               <td><input value="${pro1.size}" type="number" name="size"></td>
           </tr>
           <tr>
               <td>Description : </td>
               <td><textarea type="text" name="description">${pro1.description}
                   </textarea></td>
           </tr>
           <tr>
               <td>Category : </td>
               <td>
                   <select name="category">
                       <c:forEach items="${ListCategory}" var="s">
                        <option value="${s.id}">${s.name}</option>
                      </c:forEach>
                   </select>
                </td>
           </tr>         
            <tr>
                <td></td>
                <td><button type="submit"class="btn btn-warning">Update</button></td>
            </tr>
            </table>
                   
             
        </form>
        </div>
  </div>
  <!--Footer-->
  <jsp:include page="footer.jsp"></jsp:include>
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
