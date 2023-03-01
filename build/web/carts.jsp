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
        <!-- Fontawesome icons-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="customStyle.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <%@include file="components/navbarComponent.jsp" %>

        <section class="py-5">
            <div class="container" style="min-height: 1000px">
                <c:choose>
                    <c:when test="${sessionScope.carts == null || sessionScope.carts.size()==0}">
                        <div class="text-center">
                            <h1 style="color: yellow">Empty cart</h1>
                        </div>

                    </c:when>
                    <c:otherwise>
                        <div style="padding: 20px; display: grid; background-color: #0354D7; border-radius: 20px">
                            <h3 style="color: white">List Products</h3>
                            <table class="table" style="color: white">
                                <thead style="color: white">
                                    <tr>
                                        <th class="label-custom" scope="col">#</th>
                                        <th class="label-custom" scope="col">Image</th>
                                        <th class="label-custom" scope="col">Name</th>
                                        <th class="label-custom" scope="col">Price</th>
                                        <th class="label-custom" scope="col">Quantity</th>
                                        <th class="label-custom" scope="col">Total Price</th>
                                        <th class="label-custom" scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody style="color: white">
                                    <c:forEach items="${carts}" var="C">
                                    <form style="color: white" class="label-custom" action="update-quantity">
                                        <tr style="color: white">
                                        <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                        <th scope="row">${C.value.product.id}</th>
                                        <td><img src="${C.value.product.img_url}" width="100"/></td>
                                        <td>${C.value.product.name}</th>
                                        <td>${C.value.product.price}</td>
                                        <td><input onchange="this.form.submit()" type="number" name="quantity" value="${C.value.quantity}"/></td>
                                        <td>${C.value.product.price * C.value.quantity}</td>    
                                        <td><a href="delete-cart?productId=${C.value.product.id}" class="btn-delete">Delete<i class="bi bi-trash"></i></a></td>
                                        </tr>
                                    </form>
                                </c:forEach>     
                                </tbody style="color: white">
                            </table>
                            <br>
                            <h3 style="color: white">Total Amount: $${totalMoney}</h3>
                            <div class="text-center">
                            <a href="checkout" class="btn btn-success w-25" >Check out</a>
                            </div>
                        </div>

                    </c:otherwise>
                </c:choose>
            </div>
        </section>

        <br><br>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>

