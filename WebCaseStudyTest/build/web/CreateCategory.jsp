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
  <div class="create">
      <h1>Create Category</h1>
      <form action="/createCategory?action=create" method="post">
           <p>${requestScope.ms}</p>
               Name Category : 
               <input required type="text" name="name">          
             <input type="submit" value="Create" class="btn btn-success">
        </form>
  </div>
          <jsp:include page="footer.jsp" ></jsp:include>

 
</body>
        <script>
    // Animations initialization
  </script>
</html>
