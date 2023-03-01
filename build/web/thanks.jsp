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
        <!-- Navigation-->
        <div style="padding: 20px">
            <a href="home"><img style="padding: 1px" src="images/Dosa-logo.png" alt="Logo" width="120" height="30" ></a>

        </div>

        <br>
        
        <div style="padding: 40px;" class="container-fluid div-custom-color">
            <img style="width: 100%; height: 600px" src="images/thankU.jpg">
        </div>
        


        <div class="container" >
            <br><br>
            <div class="alert-custom  text-center" role="alert">
                Order successfully. Thank you very much.
                <div class="text-center mt-2">
                    <a class="btn-buy" href="shopping">Continue Shopping</a>
                </div>
            </div>
            <br><br>
        </div>

        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
    </body>

</html>