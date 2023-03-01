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


        <section class="py-5">
            <div class="container"
                 style="background-color: #0354D7;text-align: left;color: white; padding: 20px 60px; border-radius: 15px;">
                <h1 style="color:yellow; text-align: center">Checkout</h1>
                <div class="row">
                    <div class="col-md-8"
                         style="background-color: #023E9E;border: 4px solid #387DEA; border-radius: 5px; padding: 1rem">
                        <h3 style="color:yellow; text-align: center">List Products</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="label-custom" scope="col">#</th>
                                    <th class="label-custom" scope="col">Image</th>
                                    <th class="label-custom" scope="col">Name</th>
                                    <th class="label-custom" scope="col">Price</th>
                                    <th class="label-custom" scope="col">Quantity</th>
                                    <th class="label-custom" scope="col">Total Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="C">
                                    <tr>
                                <input type="hidden" name="productId" value="${C.value.product.id}" />
                                <th class="label-custom" scope="row">${C.value.product.id}</th>
                                <td><img src="${C.value.product.img_url}" width="100" /></td>
                                <td class="label-custom">${C.value.product.name}</th>
                                <td class="label-custom">${C.value.product.price}</td>
                                <td class="label-custom">${C.value.quantity}</td>
                                <td class="label-custom">${C.value.product.price * C.value.quantity}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3 style="color:#2DAB67; text-align: center">Total Amount: $${totalMoney}</h3>
                    </div>

                    <div class="col-md-1"></div>

                    <div class="col-md-3"
                         style="background-color: #023E9E; border: 4px solid #387DEA; border-radius: 5px; padding: 1rem">
                        <h3 style="color:yellow;">Information of customer</h3>
                        <form action="checkout" method="POST">
                            <div class="mb-3">
                                <label for="name"
                                       class="form-label label-custom">Name</label>
                                <input style="background-color: #02317B;color:white;border:none;" type="text"
                                       class="form-control" id="name" name="name" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="phone"
                                       class="form-label label-custom">Phone</label>
                                <input style="background-color: #02317B;color:white;border:none;" type="text"
                                       class="form-control" id="phone" name="phone" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="address"
                                       class="form-label label-custom">Address</label>
                                <input style="background-color: #02317B;color:white;border:none;" type="text"
                                       class="form-control" id="address" name="address"
                                       aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="note"
                                       class="form-label label-custom">Note</label>
                                <textarea style="background-color: #02317B;color:white;border:none;"
                                          class="form-control" id="note" name="note" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <br><br><br><br><br>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>