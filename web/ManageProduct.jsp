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
        <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Bape Store</title>
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
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-light-navbar">
            <div class="container-fluid px-4 px-lg-5">
                <a href="home">
                    <img src="images/Dosa-logo.png" alt="Logo" width="120" height="30">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa-solid fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a style="font-size: 20px" class="nav-link-custom active" aria-current="page"
                                                href="/DosaStore/home">Home</a></li>
                        <li class="nav-item"><a style="font-size: 20px"  class="nav-link-custom" href="/DosaStore/about.jsp">About</a></li>
                        <li class="nav-item"><a style="font-size: 20px"  class="nav-link-custom" href="/DosaStore/shopping">Shopping</a></li>

                        <c:if test="${sessionScope.user.getRole() == true}">
                            <li class="nav-item">
                                <a style="font-size: 20px"  class="nav-link-custom active" aria-current="page"
                                   href="manager">Manage Product
                                </a>
                            </li>
                        </c:if>

                    </ul>

                    <div class="d-flex">
                        <a style="font-size: 20px" class="btn-cart" href="carts">
                            <i class="fa-solid fa-cart-shopping"></i>
                            Cart
                            <span id="cart"
                                  class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                        </a>
                    </div>

                    <br> 
                    <c:choose>
                        <c:when test="${sessionScope.user != null}">
                            <a style="font-size: 20px"  href="load-user?uid=${user.id}"
                               class="btn-user ms-lg-2">${sessionScope.user.display_name}</a>
                            <a style="font-size: 20px"  href="logout" class="btn-user ms-lg-2">Logout</a>
                        </c:when>
                        <c:otherwise>
                            <a style="font-size: 20px"  href="login" class="btn-user ms-lg-2">
                                <i class="fa-solid fa-user"></i>
                                Login</a>

                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </nav>

        <!-- Section -->
        <section class="py-5">
            <div class="container text-center"
                 style="min-height: 1000px;background-color: #0354D7;text-align: left;color: white; padding: 20px 60px; border-radius: 15px; display: grid "
                 >

                <h3 style="color:yellow; text-align: center">List Product</h3>

                <div>
                    <form style="float:left" action="search-on-manager" class="d-flex mx-auto">
                        <input class="form-control " type="search" placeholder="Search" aria-label="Search"
                               name="keyword">
                        <button class="btn-search " type="submit">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                    <a style="float:right; margin-right: 30px; " 
                       class="label-custom btn-addProduct" 
                       href="add-product">
                        Add Product
                    </a> 
                </div>

                <br><br>
                <table class="table">
                    <thead>
                        <tr>
                            <th class="label-custom" scope="col">#</th>
                            <th class="label-custom" scope="col">Image</th>
                            <th class="label-custom" scope="col">Name</th>
                            <th class="label-custom" scope="col">Price</th>
                            <th class="label-custom" scope="col">Quantity</th>
                            <th class="label-custom" scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listProducts}" var="p">
                        <form>
                            <tr>
                            <input type="hidden" name="productId" value="${p.id}" />
                            <th class="label-custom " scope="row">${p.id}</th>
                            <td><img src="${p.img_url}" width="100" /></td>
                            <td class="label-custom">${p.name}</th>
                            <td class="label-custom">${p.price}</td>
                            <td class="label-custom">${p.quantity}</td>
                            <td>
                                <a href="loadProduct?productId=${p.id}"
                                   class="btn-gear">
                                    <i class="fa-solid fa-gear"></i>
                                </a>
                                <a href="delete?productId=${p.id}"
                                   class="btn-delete">
                                    <i class="fa-solid fa-trash"></i>
                                </a>
                            </td>
                            </tr>
                        </form>
                    </c:forEach>
                    </tbody>
                </table>
                <c:choose>
                    <c:when test="${listProducts == null || listProducts.size() == 0}">
                        Not founds
                    </c:when>
                    <c:otherwise>

                        <nav style="margin-left: 350px" aria-label="Page navigation example" class="d-flex-justify-content-center">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link"
                                                         href="manager?page=${page-1}">Previous</a></li>
                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${i==page?" active":""}"><a class="page-link"
                                                                                     href="manager?page=${i}">${i}</a></li>
                                    </c:forEach>
                                <li class="page-item"><a class="page-link"
                                                         href="manager?page=${page+1}">Next</a></li>
                            </ul>
                        </nav>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>

        <br><br>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>