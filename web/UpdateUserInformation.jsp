<%-- 
    Document   : index
    Created on : Jun 22, 2022, 5:19:59 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="customStyle.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <div style="padding: 20px">
            <a href="home"><img style="padding: 1px" src="images/Dosa-logo.png" alt="Logo" width="120" height="30" ></a>

        </div>

        <div style="background-color: #0354D7;width: 40%; margin: auto; border: none; padding: 1rem" class="mt-5">
            <div class="text-center">
                <h3 style="color: yellow;">User Information</h3>
            </div>
            
            <form action="update-information">  
                <div class="mb-3">
                    <input style="display: none;" value="${user.id}" type="text" class="form-control" name="id" readonly>
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label label-custom">Username</label>
                    <input style="background-color: #01378D" value="${user.username}" type="text" class="form-control input-custom" name="username" readonly>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label label-custom">Password</label>
                    <input value="${user.password}" type="password" class="form-control input-custom" name="password">
                </div>
                <div class="mb-3">
                    <label for="displayname" class="form-label label-custom">Display Name</label>
                    <input value="${user.display_name}" type="text" class="form-control input-custom" name="displayname">
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label label-custom">Address</label>
                    <input value="${user.address}" type="text" class="form-control input-custom" name="address">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label label-custom">Email</label>
                    <input value="${user.email}" type="text" class="form-control input-custom" name="email">
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label label-custom">Phone</label>
                    <input value="${user.phone}" type="text" class="form-control input-custom" name="phone">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn-buy" style="width: 50%">Change</button>
                </div>
                
            </form>
        </div>

        <br><br>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

