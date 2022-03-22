<%-- 
    Document   : register
    Created on : Dec 9, 2015, 10:41:30 AM
    Author     : C_Micro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>

        <title>CamZone.lk</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary JavaScript plugins) -->
        <script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <script type="text/javascript" src="js/sweetalert.js"></script>
        <link type="text/css" href="css/sweetalert.css" rel="stylesheet"/>
        <script type="text/javascript" src="js/sweetalert.min.js"></script>
        <script type="text/javascript" src="js/sweetalert-dev.js"></script>

        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function() {
                $(".megamenu").megamenu();
            });</script>
        <script src="js/menu_jquery.js"></script>
        <script type="text/javascript">


            var btn;

            function loginTest() {

                var uname = document.getElementById("uname").value;
                var passwd = document.getElementById("pword").value;

                if (uname == null || uname == "" || passwd == null || passwd == "") {

                    document.getElementById("err").innerHTML = "User Name or Password Cannot be Empty..";

                }

            }



        </script>


    </head>
    <body>
        <!-- header_top -->
        <div class="top_bg">
            <%@include file="header.jsp" %>
        </div>
        <!-- header -->
        <div class="header_bg">
            <div class="container">
                <div class="header">
                    <div class="head-t">
                        <div class="logo">
                            <a href="index.jsp"><img src="images/logo/logo.jpg" class="img-responsive" alt=""/> </a>
                        </div>
                        <!-- start header_right -->
                        <div class="header_right">
                            <div class="rgt-bottom">
                                <div class="log">
                                    <div class="login" >
                                        <div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
                                            <div id="loginBox">                
                                                <form id="loginForm" role="form" method="post" action="user">
                                                    <fieldset id="body">
                                                        <fieldset>
                                                            <label for="uname">user name</label>
                                                            <input type="text" id="uname" name="un">
                                                        </fieldset>
                                                        <fieldset>
                                                            <label for="password">Password</label>
                                                            <input type="password" name="pw">
                                                        </fieldset>
                                                        <input type="submit" id="login" value="Sign in">
                                                        <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
                                                    </fieldset>
                                                    <span><a href="fogot.jsp">Forgot your password?</a></span>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg">
                                    <a href="register.jsp">REGISTER</a>
                                </div>
                                <div class="cart box_1">
                                    <a href="checkout.jsp">
                                        <h3> <span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> items)<img src="images/bag.png" alt=""></h3>
                                    </a>	
                                    <p><a href="javascript:;" class="simpleCart_empty">(empty card)</a></p>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="create_btn">
                                    <a href="checkout.jsp">CHECKOUT</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="search">
                                <form>
                                    <input type="text" value="" placeholder="search...">
                                    <input type="submit" value="">
                                </form>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                    <!-- start header menu -->
                    <%@include file="NavBar.jsp" %>
                </div>
            </div>
        </div>
        <!-- content -->
        <div class="container">
            <div class="main">
                <!-- start registration -->
                <div class="registration">
                    <div class="registration_left">
                        <h2>new user? <span> create an account </span></h2>

                        <script>
                            (function() {

                                // Create input element for testing
                                var inputs = document.createElement('input');

                                // Create the supports object
                                var supports = {};

                                supports.autofocus = 'autofocus' in inputs;
                                supports.required = 'required' in inputs;
                                supports.placeholder = 'placeholder' in inputs;

                                // Fallback for autofocus attribute
                                if (!supports.autofocus) {

                                }

                                // Fallback for required attribute
                                if (!supports.required) {

                                }

                                // Fallback for placeholder attribute
                                if (!supports.placeholder) {

                                }

                                // Change text inside send button on submit
                                var send = document.getElementById('register-submit');
                                if (send) {
                                    send.onclick = function() {
                                        this.innerHTML = '...Sending';
                                    }
                                }

                            })();
                        </script>
                        <script type="text/javascript">

                            function passwordmatch() {

                                var pw1 = document.getElementById("pw1").value;
                                var pw2 = document.getElementById("pw2").value;


                                if (pw1 != pw2) {

                                    swal("password not match", "please re fill password fild")

                                } else {

                                    if (regester_user.mycheckbox.checked) {

                                        swal("Good job!", "now you are member camzone", "success")
                                        document.getElementById("regester_user").submit();
                                    } else
                                        swal("read privacy ploicy","if you agree with our privacy condition select the tik")

                                }

                            }

                        </script>




                        <div class="registration_form">
                            <!-- Form -->
                            <form form role="form" method="post" action="Register" id="regester_user">
                                <div>
                                    <label>
                                        <input placeholder="first name:" type="text" name="fname" tabindex="1" required autofocus >
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input placeholder="last name:"  type="text" name="lname" tabindex="2" required autofocus>
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input placeholder="email address:" type="email" name="email" tabindex="3" required>
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input placeholder="address 1:" name="add1" type="text" tabindex="2" required autofocus>
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input placeholder="address 2:" name="add2" type="text"  tabindex="2" required autofocus>
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input placeholder="address 3:" name="add3" type="text" tabindex="2" required autofocus>
                                    </label>
                                </div>

                                <div class="sky-form">
                                    <div class="sky_form1">
                                        <select class="form-control" name="gen" >
                                            <option type="radio" name="radio" checked="">Male</option>
                                            <option type="radio" name="radio">Female</option>
                                        </select><br>
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <input class="form-control" placeholder="username" name="uname" type="text" id="uname" required autofocus>

                                </div>
                                <div>
                                    <label>
                                        <input placeholder="password" type="password" name="pw1" tabindex="4"  id="pw1"  required>
                                    </label>
                                </div>						
                                <div>
                                    <label>
                                        <input placeholder="retype password" type="password" name="pw2" tabindex="4" id="pw2"required>
                                    </label>
                                </div>
                                <div class="sky-form">
                                    <label class="checkbox"><input type="checkbox" name="mycheckbox" id="pry"><i></i>i agree to CamZone.lk &nbsp;<a class="terms" href="privacy.jsp"> terms of service</a> </label>
                                </div>
                                <div>
                                    <input type="button" value="create an account" id="register-submit" onclick="passwordmatch()">
                                </div>

                            </form>
                            <!-- /Form -->
                        </div>
                    </div>
                    <div class="registration_left">
                        <h2>existing user</h2>
                        <div class="registration_form">
                            <!-- Form -->
                            <form id="loginForm" role="form" method="post" action="user">
                                <fieldset id="body">
                                    <fieldset>
                                        <label for="uname">user name</label>
                                        <input type="text" id="uname" name="un" required="required" placeholder="username">
                                    </fieldset>
                                    <fieldset>
                                        <label for="password">Password</label>
                                        <input type="password" name="pw" id="pword" required="required" placeholder="password">
                                    </fieldset>
                                    <input type="submit" id="login" value="sign in" onclick="loginTest()" />

                                    <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
                                </fieldset>
                                <span><a href="fogot.jsp">Forgot your password?</a></span>
                            </form>
                            <!-- /Form -->
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- end registration -->
            </div>
        </div>
        <div class="foot-top">
            <div class="container">
                <div class="col-md-6 s-c">
                    <li>
                        <div class="fooll">
                            <h5>follow us on</h5>
                        </div>
                    </li>
                    <li>
                        <div class="social-ic">
                            <ul>
                                <li><a href="#"><i class="facebok"> </i></a></li>
                                <li><a href="#"><i class="twiter"> </i></a></li>
                                <li><a href="#"><i class="goog"> </i></a></li>
                                <li><a href="#"><i class="be"> </i></a></li>
                                <li><a href="#"><i class="pp"> </i></a></li>
                                <div class="clearfix"></div>	
                            </ul>
                        </div>
                    </li>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-6 s-c">
                    <div class="stay">
                        <div class="stay-left">
                            <form>
                                <input type="text" placeholder="Enter your email to join our newsletter" required="">
                            </form>
                        </div>
                        <div class="btn-1">
                            <form>
                                <input type="submit" value="join">
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="footer">
            <div class="container">
<!--                <div class="col-md-3 cust">
                    <h4>CUSTOMER CARE</h4>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">How To Buy</a></li>
                    <li><a href="#">Delivery</a></li>
                </div>
                <div class="col-md-2 abt">
                    <h4>ABOUT US</h4>
                    <li><a href="#">Our Stories</a></li>
                    <li><a href="#">Press</a></li>
                    <li><a href="#">Career</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </div>
                <div class="col-md-2 myac">
                    <h4>MY ACCOUNT</h4>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="#">My Cart</a></li>
                    <li><a href="#">Order History</a></li>
                    <li><a href="#">Payment</a></li>
                </div>
                <div class="col-md-5 our-st">
                    <div class="our-left">
                        <h4>OUR STORES</h4>
                    </div>
                    <div class="our-left1">
                        <div class="cr_btn">
                            <a href="#">SOLO</a>
                        </div>
                    </div>
                    <div class="our-left1">
                        <div class="cr_btn1">
                            <a href="#">BOGOR</a>
                        </div>
                    </div>-->
                    <div class="clearfix"> </div>
                    <li><i class="add"> </i>Camera Hub,No 2/176.gall road Matara</li>
                    <li><i class="phone"> </i>041-5684096</li>
                    <li><a href="mail:info@cameraHub.com"><i class="mail"> </i>info@cameraHub.com </a></li>

                </div>
                <div class="clearfix"> </div>
                <p>Copyrights © 2015 CameraHub. All rights reserved</p>
            </div>
        </div>
    </body>
</html>
