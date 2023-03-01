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
        <link href="css/customStyle.css" type="text/css" rel="stylesheet" />
    </head>

    <body>
        <!-- Navigation-->
        <div style="padding: 20px">
            <a href="home"><img style="padding: 1px" src="images/Dosa-logo.png" alt="Logo" width="120" height="30" ></a>

        </div>


        <br><br><br>
        <!-- My body -->
        <div class="container mybody">

            <div class="row">

                <div class="col-md-6">

                    <div id="class2">
                        <p style="color: white;font-size:90px ; padding-left: 50px;">Hi! <i
                                class="fa-regular fa-face-smile"></i> </p>
                        <p style="color: white; font-size:90px ; padding-left: 50px;">Welcome you to join us!</p>
                    </div>

                </div>

                <div class="col-md-1">

                </div>

                <div class="col-md-4">

                    <div style="background-color: #0354D7;
                         text-align: left;
                         color: white;
                         padding: 20px 60px;">

                        <form action="register">
                            <div style="color:yellow; font-weight: 600; font-size: 30px" class="text-center">
                                Register</div>
                            <br>
                            <div class="mb-3">

                                <label  for="username"
                                        class="form-label">Username</label>

                                <input  type="text"
                                        class="form-control input-custom" id="username" name="username" aria-describedby="emailHelp">

                            </div>
                            <div class="mb-3">

                                <label  for="password"
                                        class="form-label">Password</label>

                                <input  type="password"
                                        class="form-control input-custom" name="password" id="password">

                            </div>

                            <div class="mb-3">

                                <label  for="repassword"
                                        class="form-label">Re-password</label>

                                <input  type="password"
                                        class="form-control input-custom" name="repassword" id="repassword">

                            </div>

                            <div class="mb-3">

                                <label  for="displayname"
                                        class="form-label">Display Name</label>

                                <input  type="text"
                                        class="form-control input-custom" id="displayname" name="displayname"
                                        aria-describedby="emailHelp">

                            </div>

                            <div class="mb-3">

                                <label  for="email"
                                        class="form-label">Email</label>

                                <input  type="text"
                                        class="form-control input-custom" id="email" name="email" aria-describedby="emailHelp">

                            </div>

                            <div class="mb-3">

                                <label  for="phone"
                                        class="form-label">Phone</label>

                                <input  type="tel"
                                        class="form-control input-custom" id="phone" name="phone" aria-describedby="emailHelp">

                            </div>

                            <div class="mb-3">

                                <label  for="address"
                                        class="form-label">Address</label>

                                <input  type="text"
                                        class="form-control input-custom" id="address" name="address" aria-describedby="emailHelp">

                            </div>

                            <div class="form-check d-flex justify-content-center ">

                                <input 
                                    class="form-check-input me-2 input-custom" type="checkbox" value="" id="form2Example3cg" />

                                <label style="color:white;" class="form-check-label" for="form2Example3g">
                                    I agree all statements in 
                                    <a href="#!" class="text-body">
                                        <u
                                            style="color:yellow;">Terms of service
                                        </u>
                                    </a>
                                </label>                       

                            </div>
                            
                            <h3 class="text-danger">${error1}</h3>
                            <h3 class="text-danger">${error2}</h3>

                            <div class="text-center">
                                <input style="color:white;font-weight: 600" type="submit" class="btn btn-primary"
                                       value="Register" />
                            </div>

                            
                            
                            <div class="text-center mt-3">
                                Already have an account? <a style="color:yellow; text-decoration: none;" href="login"> Login</a>
                            </div>
                            
                        </form>

                    </div>

                </div>

            </div>

        </div>
        <!-- End of mybody -->



        <br><br>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
    </body>

</html>