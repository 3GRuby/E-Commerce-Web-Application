<%-- 
    Document   : view_page
    Created on : Dec 9, 2015, 10:45:04 AM
    Author     : C_Micro
--%>

<%@page import="pojo.ProductBrand"%>
<%@page import="pojo.ProductType"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
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
        <script src="http://code.jquery.com/jquery-latest.min.js"
        type="text/javascript"></script>
        <script>$(document).ready(function() {
                $(".megamenu").megamenu();
            });</script>
        <script src="js/menu_jquery.js"></script>

        <script>
            var xmlhttp,pid;

            function createXMLHttpRequest() {
                xmlhttp = null;
                if (window.XMLHttpRequest) {
                    xmlhttp = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                } else {
                    alert("Browser doesn't support AJAX...");
                }
                //                alert("test2")
                return xmlhttp;
            }
            function loadAS(vz){
                pid=vz;
                searchProduct();
            }
            function searchProduct() {
                var type, brand;
//                alert(type + " = " + brand);
                if (type == undefined) {
                    type = $('input[name=T]:checked').val();
                }
                if (brand == undefined) {
//                    brand = document.getElementById("checkboxB").value;
                    brand = $('input[name=B]:checked').val();
                }
                if (pid == undefined) {
                    pid=0;
                }
                alert(type + " = " + brand);

                var url = "loadAdvancedSearch.jsp?type=" + type + "&brand=" + brand+"&pid="+pid;
                createXMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                    alert(xmlhttp.readyState + " - " + xmlhttp.status);
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        document.getElementById("proSearched").innerHTML = xmlhttp.responseText;
                    }

                };
                xmlhttp.open("GET", url, false);
                xmlhttp.send(null);
            }
        </script>
    </head>
    <body onload="searchProduct()">
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
                                        <div id="loginContainer">

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

                                <div id="cart">
                                    <%@include file="cartHead.jsp"%>
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
            <div class="women_main">
                <!-- start sidebar -->
                <div class="col-md-3 s-d">
                    <div class="w_sidebar">
                        <div class="w_nav1">
                            <h4>All</h4>
                            <ul>
                                <li><a href="view_page.jsp">New arrivals</a></li>
                                <li><a href="pagination_camera.jsp">DSLR Camera</a></li>
                                <li><a href="pagination_lens.jsp">Lens</a></li>
                                <li><a href="view_OthrerItem.jsp">Memory Card</a></li>
                                <li><a href="view_OthrerItem.jsp">Other Item</a></li>
                            </ul>	
                        </div>
                        <h3>filter by</h3>
                        <section  class="sky-form">
                            <h4>categories</h4>
                            <div class="row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="radio" id="checkboxT" name="T" checked="" onclick="searchProduct();" value="0"><i></i>NONE</label>
                                            <%
                                                Criteria crCat = Connection.DB.getSessionFactory().openSession().createCriteria(pojo.ProductType.class);
                                                for (int i = 0; i < crCat.list().size(); i++) {
                                                    pojo.ProductType type = (ProductType) crCat.list().get(i);
                                                    String st = "";
                                                    if (type.getIdType() == 1) {
                                                        //                                                st = "checked";
                                                    }
                                            %>
                                    <label class="checkbox"><input type="radio" id="checkboxT" name="T" <%= st%> onclick="searchProduct();" value="<%= type.getIdType()%>"><i></i><%= type.getTypeName()%></label>
                                            <%}%>
                                </div>
                            </div>
                        </section>
                        <section  class="sky-form">
                            <h4>brand</h4>
                            <div class="row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="radio" id="checkboxB" name="B" checked="" onclick="searchProduct();" value="0"><i></i>NONE</label>
                                            <%
                                                Criteria crBrand = Connection.DB.getSessionFactory().openSession().createCriteria(pojo.ProductBrand.class);
                                                for (int i = 0; i < crBrand.list().size(); i++) {
                                                    pojo.ProductBrand type = (ProductBrand) crBrand.list().get(i);
                                                    String st = "";
                                                    if (type.getIdBrand() == 1) {
                                                        //                                                st = "checked";
                                                    }
                                            %>
                                    <label class="checkbox"><input type="radio" id="checkboxB" name="B" <%= st%> onclick="searchProduct();" value="<%= type.getIdBrand()%>"><i></i><%= type.getBName()%></label>
                                            <%}%>
                                </div>
                            </div>
                        </section>

                    </div>
                </div>
                <!-- start content -->
                <div id="proSearched">

                </div>
                <div class="clearfix"></div>

                <!-- end content -->
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
                    </div>-->
                    <div class="clearfix"> </div>
                    <li><i class="add"> </i>CamZone ,No 2/176.gall road Matara</li>
                    <li><i class="phone"> </i>041-5684096</li>
                    <li><a href="mail:info@cameraHub.com"><i class="mail"> </i>info@CamZone.com </a></li>

                </div>
                <div class="clearfix"> </div>
                <p>Copyrights © 2015 CamZone. All rights reserved</p>
            </div>
        </div>
    </body>
    <script>

            function addtocart(x, y, z) {

                $.ajax({
                    type: "POST",
                    url: "./addCart",
                    data: "id=" + x + "&qty=" + y + "&up=" + z,
                    cache: false,
                    success: function(html) {
                        html = html.trim();
                        alert(html)
                        refreshw();
                    }
                });
            }
            function emptyCart(x) {
                $.ajax({
                    type: "POST",
                    url: "remvCart",
                    data: "id=" + x + "&ty=all",
                    cache: false,
                    success: function(html) {
                        refreshw();
                    }
                });
            }
            function refreshw() {
                $.ajax({
                    type: "POST",
                    url: "cartHead.jsp",
                    data: "id=d",
                    cache: false,
                    success: function(html) {

                        $("#cart").html(html);
                    }
                });
            }

    </script>
</html>