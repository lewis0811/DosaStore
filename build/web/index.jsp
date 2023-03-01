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
        <link href="css/styles.css" rel="stylesheet" />
        <link href="customStyle.css" type="text/css" rel="stylesheet" />


    </head>

    <body>
        <%@include file="components/navbarComponent.jsp" %>

        <!-- Header-->
        <header class="bg-header py-3 px-3"> 
            <img class="img-header" src="images/BAPE-BANNER.jpg">
        </header>

        <div style="margin-top: 30px" class="text-center">
            <a class="btn-shopping"
               href="shopping">Shopping Now
            </a>
        </div>

        <!-- Section-->
        <section>
            <div class="container px-4 px-lg-5 mt-5">
                <div style="padding: 20px 60px"  class="row div-custom-color">

                    <div class="text-center">
                        <h3 style="color:white;">New Arrival</h3>
                    </div>


                    <br>
                    <br>
                    <c:forEach items="${listNewProduct}" var="P">
                        <div class="col mb-5">
                            <div class="card h-100">   
                                <!-- Product image-->
                                <a href="detail?productId=${P.id}">
                                    <img class="card-img-top" src="${P.img_url}" alt="..." />
                                </a>
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${P.name}</h5>
                                        <!-- Product reviews-->
                                        <div
                                            class="d-flex justify-content-center small text-warning mb-2">
                                            <div class="fa-solid fa-star">${P.description}</div>
                                        </div>
                                        <!-- Product price-->
                                        $${P.price}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                </div>

                <br>
                <br>
                <br>
                <br>
                <div style="padding: 20px 60px" class="row div-custom-color">
                    <div class="text-center">
                        <h3 style="color:white;">Popular Items</h3>
                    </div>
                    <br>
                    <br>
                    <c:forEach items="${listTopProduct}" var="P">
                        <div class="col mb-5">
                            <div class="card h-100">
                                <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>   
                                <!-- Product image-->
                                <a href="detail?productId=${P.id}">
                                    <img class="card-img-top" src="${P.img_url}" alt="..." />
                                </a>
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${P.name}</h5>
                                        <!-- Product reviews-->
                                        <div
                                            class="d-flex justify-content-center small text-warning mb-2">
                                            <div class="fa-solid fa-star">${P.description}</div>
                                        </div>
                                        <!-- Product price-->
                                        $${P.price}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                </div>

            </div>
        </section>

        <br><br>
        <!--About Dosa-->
        <div class="container">
            <div class="row order">

                <div class="col-md-6">

                    <div>

                        <img class="img-header" id="image1" src="images/Bape-hugo.jpg" />

                    </div>

                </div>

                <div class="col-md-6">

                    <div>
                        <img class="img-header" id="image1" src="images/Bape-hugo2.jpg" />
                    </div>
                </div>

            </div>
        </div>

        <br><br>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>

    </body>

</html>