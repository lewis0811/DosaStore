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
        <link href="css/styles.css" type="text/css" rel="stylesheet" />
        <link href="customStyle.css" type="text/css" rel="stylesheet" />
        <link href="css/customStyle.css" type="text/css" rel="stylesheet"/>

    </head>
    <body>
        <!-- Navigation-->
        <div style="padding: 20px">
            <a href="home"><img style="padding: 1px" src="images/Dosa-logo.png" alt="Logo" width="120" height="30" ></a>

        </div>

        <div style="background-color: #0354D7; width: 40%; margin: auto; border: none; padding: 1rem" class="mt-5">
            <div class="text-center">
                <h3 style="color: yellow;">Change Information of Product</h3>
            </div>

            <form action="update">  
                <div class="mb-3">
                    <input style="background-color: #01378D; display: none;" value="${Product.id}" type="text" class="form-control input-custom" name="id" readonly>
                </div> 
                <div class="mb-3">
                    <label for="name" class="form-label label-custom">Name</label>
                    <input style="background-color: #01378D;" value="${Product.name}" type="text" class="form-control input-custom" name="name">
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label label-custom">Price</label>
                    <input value="${Product.price}" type="text" class="form-control input-custom" name="price">
                </div>
                <div class="mb-3">
                    <label for="quantity" class="form-label label-custom">Quantity</label>
                    <input value="${Product.quantity}" type="text" class="form-control input-custom" name="quantity">
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label label-custom">Image</label>
                    <input value="${Product.img_url}" type="text" class="form-control input-custom" name="image">
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label label-custom">Description</label>
                    <textarea type="text" class="form-control input-custom" name="description">${Product.description}</textarea>
                </div>

                <div class="mb-3">
                    <label for="category" class="form-label label-custom">
                        Category
                    </label>
                    <select name="category" class="form-control input-custom">
                        <c:forEach items="${listCategories}" var="c">
                            <option value="${c.id}">${c.name}</option>
                        </c:forEach>
                    </select>
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

