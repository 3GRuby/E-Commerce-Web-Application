<%-- 
    Document   : checkout
    Created on : Dec 9, 2015, 10:34:25 AM
    Author     : C_Micro
--%>


<%@page import="cart.cartItem"%>
<%@page import="cart.cart"%>
<%@page import="pojo.Product"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%

        if (request.getParameter("id") != null && session.getAttribute("cart") != null) {
            cart y = (cart) session.getAttribute("cart");
            if (request.getParameter("p").toString().equals("pp")) {
                for (int i = 0; i < y.getL().size(); i++) {
                    cartItem get = y.getL().get(i);
                    if (get.getId().equals(request.getParameter("id"))) {
                        get.setQty(get.getQty() + 1);
                        break;
                    }
                }
            } else {
                for (int i = 0; i < y.getL().size(); i++) {
                    cartItem get = y.getL().get(i);
                    if (get.getId().equals(request.getParameter("id"))) {
                        get.setQty(get.getQty() - 1);
                        break;
                    }
                }
            }
        }

    %>
    <head>
        <title>CamZone.lk</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary JavaScript plugins) -->
        <script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <!--//theme-style-->

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
            <div class="container">
                <div class="header_top">
                    <div class="top_right">
                        <ul>
                            <li><a href="#">help</a></li>|
                            <li><a href="contact.jsp">Contact</a></li>|
                            <li><a href="#">Delivery information</a></li>
                        </ul>
                    </div>
                    <div class="top_left">
                        <h2><span></span> Call us : 032 2352 782</h2>
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
                            <a href="index.jsp"><img src="images/logo/logo.jpg" class="img-responsive" alt=""/> </a>
                        </div>
                        <!-- start header_right -->
                        <div class="header_right">
                            <div class="rgt-bottom">
                                <div class="log">
                                    <div class="login" >
                                        <div id="loginContainer">
                                            <!--<a href="#" id="loginButton"><span>Login</span></a>-->
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
                                                    <span><a href="#">Forgot your password?</a></span>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--                                <div class="reg">
                                                                    <a href="register.html">REGISTER</a>
                                                                </div>-->
                                <div id="cart">
                                    <%@include file="cartHead.jsp"%>
                                </div>

                                <div class="clearfix"> </div>
                            </div>
                            <!--                            <div class="search">
                                                            <form>
                                                                <input type="text" value="" placeholder="search...">
                                                                <input type="submit" value="">
                                                            </form>
                                                        </div>-->
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <!-- start header menu -->
                    <%@include file="NavBar.jsp" %>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="check">	 
                <%

                    if (session.getAttribute("cart") != null) {
                        cart y = (cart) session.getAttribute("cart");
                        double tot = 0.0;
                        for (int i = 0; i < y.getL().size(); i++) {
                            cartItem get = y.getL().get(i);
                            tot = tot + (get.getQty() * get.getuPrice());
                        }

                %>
                <div class="col-md-3 cart-total">
                    <a class="continue" href="view_page.jsp">Continue to basket</a>
                    <div class="price-details">
                        <h3>Price Details</h3>
                        <span>Total</span>
                        <span class="total1"><%=tot%></span>
                        <span>Discount</span>
                        <span class="total1">---</span>
                        <span>Delivery Charges</span>
                        <span class="total1">0.00</span>
                        <div class="clearfix"></div>				 
                    </div>	
                    <ul class="total_price">
                        <li class="last_price"> <h4>TOTAL</h4></li>	
                        <li class="last_price"><span><%=tot%></span></li>
                        <div class="clearfix"> </div>
                    </ul>


                    <div class="clearfix"></div>
                    <%
                        String ph = "";
                        if (session.getAttribute("login") == null) {
                            ph = "./register.jsp";
                        } else {
                            ph = "./shippingDeta.jsp";
                        }
                    %>
                    <a class="order" href="<%=ph%>">Place Order</a>
                    <!--                    <div class="total-item">
                                            <h3>OPTIONS</h3>
                                            <h4>COUPONS</h4>
                                            <a class="cpns" href="#">Apply Coupons</a>
                                            <p><a href="#">Log In</a> to use accounts - linked coupons</p>
                                        </div>-->
                </div>
                <div class="col-md-9 cart-items">
                    <h1>My Shopping Bag (<%=y.getL().size()%>)</h1>
                    <%
                        Session ses1 = Connection.DB.getSessionFactory().openSession();

                        for (int i = 0; i < y.getL().size(); i++) {
                            cartItem get = y.getL().get(i);
                            Criteria cr1 = ses1.createCriteria(pojo.Product.class);
                            cr1.add(Restrictions.eq("idProduct", Integer.parseInt(get.getId())));
                            Product ic = (Product) cr1.uniqueResult();



                    %>
                    <div class="cart-header">
                        <div class="close1" onclick="emptyCart(<%=get.getId()%>, 'one')"></div>
                        <div class="cart-sec simpleCart_shelfItem">
                            <div class="cart-item cyc">
                                <img src="images/<%=ic.getImage1()%>" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">
                                <h3><a href="#"><%=ic.getName()%></a><span>Model No: <%=ic.getModel().getModelName()%></span></h3>
                                <ul class="qty">
                                    <li><p>Unit Price : <%=ic.getPrice()%></p></li>
                                    <li><p>Qty : <%=get.getQty()%></p><a href="?id=<%=get.getId()%>&p=pp" class='btn-sm btn-primary' >+</a> <a href="?id=<%=get.getId()%>&p=mm" class='btn-sm btn-warning' >-</a></li>
                                    
                                </ul>

                                <div class="delivery">
                                    <span style="color: red">Memory Chips only Free Delivered </span><br>
                                    <span>Other Item Cash On Delivered Post Charge </span><br>
                                    <span>in 2-5 bussiness Days</span><br>
                                    <span><a href="Diliver_charge.jsp"/><input type="submit" value="Diliver Charge" class='btn-sm btn-primary'></span>
                                    <div class="clearfix"></div>
                                </div>	
                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>

                    <%}
                        }%>

                </div>


                <div class="clearfix"> </div>
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
                            <!--                            <form>
                                                            <input type="text" placeholder="Enter your email to join our newsletter" required="">
                                                        </form>-->
                        </div>
                        <div class="btn-1">
                            <form>
                                
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
                    <li><a href="contact.jsp">Contact</a></li>
                </div>
                <!--                <div class="col-md-2 myac">
                                    <h4>MY ACCOUNT</h4>
                                    <li><a href="register.html">Register</a></li>
                                    <li><a href="#">My Cart</a></li>
                                    <li><a href="#">Order History</a></li>
                                    <li><a href="#">Payment</a></li>
                                </div>-->
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
                    <li><a href="mail:info@camzone.com"><i class="mail"> </i>info@camZone.com </a></li>

                </div>
                <div class="clearfix"> </div>
                <p>Copyrights © 2015 CamZone. All rights reserved</p>
            </div>
        </div>
    </body>
    <script>

            function emptyCart(x, a) {
                $.ajax({
                    type: "POST",
                    url: "remvCart",
                    data: "id=" + x + "&ty=" + a,
                    cache: false,
                    success: function(html) {
                        window.location.replace("./checkout.jsp");
                    }
                });
            }
            function refreshw() {
                $.ajax({
                    type: "POST",
                    url: "./cartHead.jsp",
                    data: "id=d",
                    cache: false,
                    success: function(html) {
                        $("#cart").html(html);
                    }
                });
            }

    </script>
