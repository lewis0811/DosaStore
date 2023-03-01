<%-- Document : index Created on : Jun 22, 2022, 5:19:59 PM Author : Admin --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dosa Store</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Fontawesome icons-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link type="text/css" href="css/styles.css" rel="stylesheet" />
        <link type="text/css" href="customStyle.css" rel="stylesheet" />
    </head>
    <body>
        <%@include file="components/navbarComponent.jsp" %>

        <!-- Header-->
        <header class="bg-header py-3 px-3"> 
            <img class="img-header" src="images/about_us.jpg">
        </header>
        <br><br><br>
        <section>
            <div style="padding: 20px" class="container div-custom-color" >
                <h2 style="color:white">About Dosa <i class="fa-regular fa-face-smile"></i> </h2>
                <h3 style="color:white">We're on a mission to enable everyone to discover the joy of shopping</h3> 
                <p style="color:white">The future of shopping goes beyond entertainment and it's a privilege to help shape it! We're
                    building a safe, affordable, and sustainable marketplace for the customers of today and
                    tomorrow.</p>
            </div>

        </section>

        <br><br><br>
        <%@include file="components/footerComponent.jsp" %>


    </body>


</html>