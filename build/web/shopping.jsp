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

        <!-- Header-->
        <header class="bg-header py-3 px-3"> 
            <img class="img-header" src="images/Banner.jfif">
        </header>

        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    <div class="col-md-3 mb-sm-5 ">
                        <div style="padding: 10px 30px 30px 30px; border-radius: 20px" class="div-custom-color">
                            <h3 style="color:white;">Category</h3>
                            <ul class="list-group">
                                <c:forEach items="${sessionScope.listCategories}" var="C">
                                    <li class="list-group-item-custom">
                                        <a class="list-group-item-a"
                                           href="filter-category?categoryId=${C.id}">
                                            ${C.name}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>


                    </div>
                    <div class = "col-md-1"> </div>
                    <div class="col-md-8">
                        <div style="padding: 10px 50px 0px 50px; border-radius: 20px" class="div-custom-color">
                            <h3 style="color:white;">All Product</h3>
                            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">
                                <c:forEach items="${listProducts}" var="P">
                                    <div class="col mb-5">
                                        <div class="card h-100">
                                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>   
                                            <!-- Product image-->
                                            <a href="detail?productId=${P.id}">
                                                <img class="card-img-top" src="${P.img_url}" alt="..." />
                                            </a>
                                            <!-- Product details-->
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <!-- Product name-->
                                                    <h5 class="fw-bolder">${P.name}</h5>
                                                    <!-- Product reviews-->
                                                    <div
                                                        class="d-flex justify-content-center small text-danger mb-2">
                                                        <div class="bi-star-fill">${P.description}</div>
                                                    </div>
                                                    <!-- Product price-->
                                                    <span class="text-muted text-decoration-line-through"><fmt:formatNumber value="${P.price * 1.3}" type="currency" /></span>
                                                    $${P.price}
                                                </div>
                                            </div>
                                            <!-- Product actions-->

                                            <c:choose>
                                                <c:when test="${P.quantity == 0}">
                                                    <h5>Sold out. Please return later!</h5>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                                                    href="add-to-cart?productId=${P.id}">Add to cart</a></div>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                        <br>
                        <c:choose>
                            <c:when test="${listProducts == null || listProducts.size() == 0}">
                                <p style="color:white;">Not founds</p>
                            </c:when>
                            <c:otherwise>
                                <div style="margin-left: 275px">
                                    <nav aria-label="Page navigation example" class="d-flex-justify-content-center">
                                        <ul class="pagination">
                                            <li class="page-item">
                                                <c:if test="${requestScope.categoryId == null}">
                                                    <a class="page-link"
                                                       href="shopping?page=${page-1}">Previous
                                                    </a> 
                                                </c:if>
                                                <c:if test="${requestScope.categoryId != null}">
                                                    <a class="page-link"
                                                       href="filter-category?categoryId=${requestScope.categoryId}&page=${page-1}">Previous
                                                    </a> 
                                                </c:if>

                                            </li>
                                            <c:forEach begin="1" end="${totalPage}" var="i">
                                                <c:if test="${requestScope.categoryId == null}">
                                                    <li class="page-item ${i==page?" active":""}">
                                                        <a class="page-link"
                                                           href="shopping?page=${i}">${i}
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${requestScope.categoryId != null}">
                                                    <li class="page-item ${i==page?" active":""}">
                                                        <a class="page-link"
                                                           href="filter-category?categoryId=${requestScope.categoryId}&page=${i}">${i}
                                                        </a>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                            <li class="page-item">
                                                <c:if test="${requestScope.categoryId == null}">
                                                    <a class="page-link"
                                                       href="shopping?page=${page+1}">Next
                                                    </a> 
                                                </c:if>
                                                <c:if test="${requestScope.categoryId != null}">
                                                    <a class="page-link"
                                                       href="filter-category?categoryId=${requestScope.categoryId}&page=${page+1}">Next
                                                    </a> 
                                                </c:if>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>

                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>

            </div>
        </section>



        <br><br>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>

    </body>

</html>