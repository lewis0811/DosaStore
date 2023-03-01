<%-- Document : index Created on : Jun 22, 2022, 5:19:59 PM Author : Admin --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
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
        <link href="css/styles.css" rel="stylesheet" />
        <link href="customStyle.css" type="text/css" rel="stylesheet" />
    </head>

    <body>

        <%@include file="components/navbarComponent.jsp" %>

        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6">
                        <img class="card-img-top mb-5 mb-md-0" src="${product.img_url}"
                             alt="..." />
                    </div>

                    <div class="col-md-1">        
                    </div>

                    <div style="padding: 20px;border-radius: 20px" class="col-md-5 div-custom-color">

                        <h1  class="display-5 fw-bolder label-custom">${product.name}</h1>
                        <c:choose>
                            <c:when test="${product.quantity == 0}">
                                <h3>Sold out</h3>
                            </c:when>
                            <c:otherwise>
                                <div class="fs-5 mb-5">
                                    <span style="color:gray;" class="text-decoration-line-through label-custom"><fmt:formatNumber value="${product.price * 1.3}" type="currency" /></span>
                                    <span style="color:red;" class="label-custom">$${product.price}</span>
                                    <p class="lead label-custom">${product.description}</p>
                                    <div class="d-flex">
                                        <a href="add-to-cart?productId=${product.id}"
                                           class="btn-cart flex-shrink-0" type="button">
                                            <i class="fa-solid fa-cart-shopping me-1"></i>
                                            Add to cart
                                        </a>
                                        <a href="add-to-cart?productId=${product.id}&toCheckout=true" class="btn-buy flex-shrink-0 ms-2" type="button">
                                            Buy now
                                        </a>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>





                    </div>
                </div>
            </div>
            <br>
        </section>


        <!--         Footer
                <footer style="display: block; margin-top: 20px;" class="py-5 bg-footer mt-auto">
                    <div class="container">
                        <p class="m-0 text-center text-white">Copyright &copy; Dosa 2022</p>
                    </div>
                </footer>-->

        <%@include file="components/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>