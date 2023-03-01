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

                        <li class="nav-item">
                            <form  action="search" class="d-flex ">
                                <input style="padding-right: 200px;margin: 0px 20px" style="padding-left: 10px" class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
                                       name="keyword">
                                <button class="btn-search " type="submit">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </form>
                        </li>
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
