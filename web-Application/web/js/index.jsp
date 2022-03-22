<%-- 
    Document   : index
    Created on : Nov 28, 2015, 10:40:29 AM
    Author     : C_Micro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>camera Hub</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary JavaScript plugins) -->
        <script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->

        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
        <script src="js/menu_jquery.js"></script>
        <script src="js/simpleCart.min.js"> </script>
    </head>
    <body>
        <!-- header_top -->
        <div class="top_bg">
            <div class="container">
                <div class="header_top">
                    <div class="top_right">
                        <ul>
                            <li><a href="#">help</a></li>|
                            <li><a href="contact.html">Contact</a></li>|
                            <li><a href="#">Delivery information</a></li>
                        </ul>
                    </div>
                    <div class="top_left">
                        <h2><span></span> Call us : 041 5684 096</h2>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- header -->
        <div class="header_bg">
            <div class="container">
                <div class="header">
                    <div class="head-t">
                        <div class="logo">
                            <a href="index.html"><img src="images/logo_image.jpg" class="img-responsive" alt=""/> </a>
                        </div>
                        <!-- start header_right -->
                        <div class="header_right">
                            <div class="rgt-bottom">
                                <div class="log">
                                    <div class="login" >
                                        <div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
                                            <div id="loginBox">                
                                                <form id="loginForm">
                                                    <fieldset id="body">
                                                        <fieldset>
                                                            <label for="email">Email Address</label>
                                                            <input type="text" name="email" id="email">
                                                        </fieldset>
                                                        <fieldset>
                                                            <label for="password">Password</label>
                                                            <input type="password" name="password" id="password">
                                                        </fieldset>
                                                        <input type="submit" id="login" value="Sign in">
                                                        <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
                                                    </fieldset>
                                                    <span><a href="#">Forgot your password?</a></span>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg">
                                    <a href="register.html">REGISTER</a>
                                </div>
                                <div class="cart box_1">
                                    <a href="checkout.html">
                                        <h3> <span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> items)<img src="images/bag.png" alt=""></h3>
                                    </a>	
                                    <p><a href="javascript:;" class="simpleCart_empty">(empty card)</a></p>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="create_btn">
                                    <a href="checkout.html">CHECKOUT</a>
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
                    <ul class="megamenu skyblue">
                        <li class="active grid"><a class="color1" href="index.html">Home</a></li>
                        <li class="grid"><a class="color2" href="#">New Arrivals</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">brands</a></li>
                                            </ul>	
                                        </div>							
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>kids</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>												
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>account</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>						
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                        <li><a class="color4" href="#">Cameras</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">brands</a></li>
                                            </ul>	
                                        </div>							
                                    </div>
                                     <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>kids</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>												
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>account</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>						
                                    </div>

                                </div>
                                    
                                </div>
                        


                        <li><a class="color5" href="#">Lens</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">brands</a></li>
                                            </ul>	
                                        </div>							
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>kids</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>												
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>account</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>						
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                        <li><a class="color6" href="#">Other Item</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">brands</a></li>
                                            </ul>	
                                        </div>							
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>kids</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>												
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>account</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>						
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>				

                        <li><a class="color7" href="#">Policies</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">brands</a></li>
                                            </ul>	
                                        </div>							
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>kids</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>												
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>account</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>						
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>				

                        <li><a class="color8" href="#">About Us</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">brands</a></li>
                                            </ul>	
                                        </div>							
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>kids</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>												
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="h_nav">
                                            <h4>account</h4>
                                            <ul>
                                                <div class="col-md-12 arriv-left2">
                                                    <img src="images/1-new.jpg" class="img-responsive" alt="">
                                                    <div class="arriv-top">
                                                        <div class="crt-btn">
                                                            <a href="details.html">TAKE A LOOK</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ul>	
                                        </div>						
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                    </ul> 
                </div>
            </div>
        </div>
        <div class="arriv">
            <div class="container">
                <div class="arriv-top">
                    <div class="col-md-6 arriv-left">
                        <img src="images/1-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info">
                            <h3>NEW ARRIVALS</h3>
                            <p>REVIVE YOUR WARDROBE WITH CHIC KNITS</p>
                            <div class="crt-btn">
                                <a href="details.html">TAKE A LOOK</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 arriv-right">
                        <img src="images/2-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info">
                            <h3>DSLR CAMERA</h3>
                            <p>REVIVE YOUR WARDROBE WITH CHIC KNITS</p>
                            <div class="crt-btn">
                                <a href="details.html">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="arriv-bottm">
                    <div class="col-md-8 arriv-left1">
                        <img src="images/3-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info1">
                            <h3>CAMERA LANCE</h3>
                            <p>REVIVE YOUR WARDROBE WITH CHIC KNITS</p>
                            <div class="crt-btn">
                                <a href="details.html">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-right1">
                        <img src="images/4-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="details.html"><h3>MEMORY CHIPS<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="arriv-las">
                    <div class="col-md-4 arriv-left2">
                        <img src="images/5-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="details.html"><h3>DIGITAL CAMERA<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-middle">
                        <img src="images/6-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info3">
                            <h3>Lance Item</h3>
                            <div class="crt-btn">
                                <a href="details.html">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-right2">
                        <img src="images/7-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="details.html"><h3>Camera Item<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="special">
            <div class="container">
                <h3>Special Offers</h3>
                <div class="specia-top">
                    <ul class="grid_2">
                        <li>
                            <a href="details.html"><img src="images/8-new.jpg" class="img-responsive" alt=""></a>
                            <div class="special-info grid_1 simpleCart_shelfItem">
                                <h5>Nikon D800</h5>
                                <div class="item_add"><span class="item_price"><h6>ONLY $680.00</h6></span></div>
                                <div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
                            </div>
                        </li>
                        <li>
                            <a href="details.html"><img src="images/8-new.jpg" class="img-responsive" alt=""></a>
                            <div class="special-info grid_1 simpleCart_shelfItem">
                                <h5>Nikon D800</h5>
                                <div class="item_add"><span class="item_price"><h6>ONLY $680.00</h6></span></div>
                                <div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
                            </div>
                        </li>
                        <li>
                            <a href="details.html"><img src="images/8-new.jpg" class="img-responsive" alt=""></a>
                            <div class="special-info grid_1 simpleCart_shelfItem">
                                <h5>Nikon D800</h5>
                                <div class="item_add"><span class="item_price"><h6>ONLY $680.00</h6></span></div>
                                <div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
                            </div>
                        </li>
                        <li>
                            <a href="details.html"><img src="images/8-new.jpg" class="img-responsive" alt=""></a>
                            <div class="special-info grid_1 simpleCart_shelfItem">
                                <h5>Nikon D800</h5>
                                <div class="item_add"><span class="item_price"><h6>ONLY $680.00</h6></span></div>
                                <div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
                            </div>
                        </li>
                        <div class="clearfix"> </div>
                    </ul>
                </div>
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
                <div class="col-md-3 cust">
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
                    <li><a href="contact.html">Contact</a></li>
                </div>
                <div class="col-md-2 myac">
                    <h4>MY ACCOUNT</h4>
                    <li><a href="register.html">Register</a></li>
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
                    </div>
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
