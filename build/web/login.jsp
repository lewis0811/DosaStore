<%-- Document : register Created on : Jul 5, 2022, 4:19:32 PM Author : Son --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dosa Store</title>
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
        <div style="padding: 20px">
            <a href="home"><img style="padding: 1px" src="images/Dosa-logo.png" alt="Logo" width="120" height="30" ></a>

        </div>


        <br><br><br>
        <!-- My body -->
        <div class="container-fluid ">

            <div class="row">

                <div class="col-md-6">

                    <div id="class2">
                        <p style="color: white;font-size:90px ; padding-left: 50px;">Hi! <i
                                class="fa-regular fa-face-smile"></i> </p>
                        <p style="color: white; font-size:90px ; padding-left: 50px;">It's nice to see you!</p>
                    </div>

                </div>

                <div class="col-md-1">

                </div>

                <div class="col-md-4">

                    <div style="background-color: #0354D7;
                         text-align: left;
                         color: white;
                         padding: 20px 60px;">

                        <form action="login" method="post">
                            <h3 style="color:yellow; text-align: center">Login</h3>
                            <div class="mb-3">
                                <label for="username" class="form-label label-custom">Username</label>
                                <input type="text" class="form-control input-custom" id="username" name="username" aria-describedby="emailHelp">
                                <div style="color:white;" id="emailHelp" class="form-text">
                                    New user? 
                                    <a href="register.jsp" style="color:yellow; text-decoration: none;  ">
                                        Register
                                    </a>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label label-custom">Password</label>
                                <input type="password" class="form-control input-custom" name="password" id="exampleInputPassword1">
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input input-custom" id="exampleCheck1" name="remember">
                                <label class="form-check-label label-custom" for="exampleCheck1">Remember me</label>
                            </div>
                            <h3 class="text-danger">${error}</h3>

                            <div class="text-center">
                                <button  type="submit" class="btn btn-primary">Login</button>
                            </div>

                        </form>

                    </div>

                </div>

            </div>

        </div>
        <!-- End of mybody -->



        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
    </body>

</html>