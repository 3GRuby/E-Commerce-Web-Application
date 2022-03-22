<%-- 
    Document   : index
    Created on : Dec 28, 2015, 12:01:10 PM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
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
                                <%
                                    if (session.getAttribute("login") == null) {
                                        UserReg o = (UserReg) session.getAttribute("login");

                                %>
                                <div class="log">
                                    <div class="login" >
                                        <div id="loginContainer"><a href="register.jsp" id="loginButton"><span>Login</span></a>
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

                                                    </fieldset>
                                                    <span><a href="passwordreset.jsp">Forgot your password?</a></span>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg">
                                    <a href="register.jsp"><span>REGISTER</span></a>
                                </div>
                                <% }%>
                                <%@include file="cartHead.jsp" %>
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
        <div class="arriv">
            <div class="container">
                <div class="arriv-top">
                    <div class="col-md-6 arriv-left">
                        <img src="images/1-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info">
                            <h3>NEW ARRIVALS</h3>
                            <p>View NEW ARRIVALS</p>
                            <div class="crt-btn">
                                <a href="details.jsp">TAKE A LOOK</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 arriv-right">
                        <img src="images/2-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info">
                            <h3>DSLR CAMERA</h3>
                            <p>New DSLR CAMERA VIEW</p>
                            <div class="crt-btn">
                                <a href="details.jsp">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="arriv-bottm">
                    <div class="col-md-8 arriv-left1">
                        <img src="images/bac/bac-5.gif" class="img-responsive" style="width: 760px;height: 297px" alt="">
                        <div class="arriv-info1">
                            <h3>CAMERA LANCE</h3>
                            <p>REVIVE YOUR CAMERA LANCE </p>
                            <div class="crt-btn">
                                <a href="details.jsp">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-right1">
                        <img src="images/4-new.jpg" class="img-responsive" alt="" >
                        <div class="arriv-info2">
                            <a href="details.jsp"><h3>MEMORY CHIPS<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="arriv-las">
                    <div class="col-md-4 arriv-left2">
                        <img src="images/5-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="details.jsp"><h3>DIGITAL CAMERA<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-middle">
                        <img src="images/6-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info3">
                            <h3>Lance Item</h3>
                            <div class="crt-btn">
                                <a href="details.jsp">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-right2">
                        <img src="images/7-new.jpg" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="details.jsp"><h3>Camera Item<i class="ars"></i></h3></a>
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
                            <%

                                int fr = 0;
                                if (request.getParameter("pid") != null) {
                                    fr = Integer.parseInt(request.getParameter("pid")) * 2;
                                } else {
                                    fr = 0;
                                }

                                Session ses1 = Connection.DB.getSessionFactory().openSession();
                                Criteria cr1 = ses1.createCriteria(pojo.Product.class);
                                int i = cr1.list().size() / 2;
                                if (cr1.list().size() % 2 == 1) {
                                    i += 1;
                                }
                                cr1.setMaxResults(4);
                                cr1.setFirstResult(fr);

                                List<pojo.Product> lst = cr1.list();

                                for (pojo.Product pr : lst) {


                            %>
                        </li>
                        <li>
                            <a href="details.jsp?id=<%=pr.getIdProduct()%>"><img src="images/DSLR/<%=pr.getImage1()%>" class="img-responsive" alt=""></a>
                            <div class="special-info grid_1 simpleCart_shelfItem">
                                <h5><%= pr.getName()%></h5>
                                <center>
                                    <p><%= pr.getProductBrand().getBName()%><br><%= pr.getModel().getModelName()%></p></center>
                                <div class="item_add"><span class="item_price"><h6>Rs :<%=pr.getPrice()%></h6></span></div>
                                <div class="item_add"><span class="item_price"><a href="checkout.jsp">add to cart</a></span></div>
                            </div>
                        </li>
                        <% }%>

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
