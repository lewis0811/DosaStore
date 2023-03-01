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
                <title>Shop Homepage - Start Bootstrap Template</title>
                <!-- Favicon-->
                <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
                <!-- Bootstrap icons-->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
                    rel="stylesheet" />
                <!-- Core theme CSS (includes Bootstrap)-->
                <link href="css/styles.css" rel="stylesheet" />
                <link href="css/customStyle.css" rel="stylesheet" />
            </head>

            <body>
                <!-- Navigation-->
                <div style="padding: 20px">
                    <img style="padding: 1px" src="images/Dosa-logo.png" alt="Logo" width="120" height="30">
                </div>


                <div style="background-color: #0354D7;width: 40%; margin: auto; padding: 1rem" class="mt-5">
                    <h3 style="color:yellow; text-align: center">Add New Product</h3>
                    <form action="add">
                        <div class="mb-3">
                            <label for="name" class="form-label label-custom">Name</label>
                            <input type="text" class="form-control input-custom" name="name">
                        </div>
                        <div class="mb-3">
                            <labe for="price" class="form-label label-custom">Price</label>
                                <input type="text" class="form-control input-custom" name="price">
                        </div>
                        <div class="mb-3">
                            <labe for="quantity" class="form-label label-custom">Quantity</label>
                                <input type="text" class="form-control input-custom" name="quantity">
                        </div>
                        <div class="mb-3">
                            <labe for="image" class="form-label label-custom">Image</label>
                                <input type="text" class="form-control input-custom" name="image">
                        </div>
                        <div class="mb-3">
                            <labe for="description" class="form-label label-custom">Description</label>
                                <textarea type="text" class="form-control input-custom" name="description"></textarea>
                        </div>
                        <div class="mb-3">
                            <labe for="category" class="form-label label-custom">Category</label>
                                <select name="category" class="form-control input-custom">
                                    <c:forEach items="${listCategories}" var="c">
                                        <option value="${c.id}">${c.name}</option>
                                    </c:forEach>
                                </select>
                        </div>
                        <div class="text-center">
                            <button style="color:white;font-weight: 600" type="submit" class="btn-buy"
                                style="width: 30px">Add</button>
                        </div>

                    </form>
                </div>

                <br><br><br><br>
                <!-- Footer-->
                <footer style="display: block" class="py-5 bg-footer mt-auto">
                    <div class="container">
                        <p class="m-0 text-center text-white">Copyright &copy; Dosa 2022</p>
                    </div>
                </footer>

                <!-- Bootstrap core JS-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS-->
                <script src="js/scripts.js"></script>
            </body>

            </html>