<%-- 
    Document   : details
    Created on : Dec 9, 2015, 10:39:01 AM
    Author     : C_Micro
--%>

<%@page import="pojo.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Criteria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    if(request.getParameter("id") == null){
        response.sendRedirect("./view_page.jsp");
    }else{
            Session ses1 = Connection.DB.getSessionFactory().openSession();
                        Criteria crXX = ses1.createCriteria(pojo.Product.class);
                        crXX.add(Restrictions.eq("idProduct", Integer.parseInt((String)request.getParameter("id"))));
                         List k =crXX.list();
                         Product hh =  (Product)k.get(0);
                        
                                
                       

%>

<html>
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
        <script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
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
                            <a href="index.html"><img src="images/logo/logo.jpg" class="img-responsive" alt=""/> </a>
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
                                                    <span><a href="#">Forgot your password?</a></span>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg">
                                    <a href="register.html">REGISTER</a>
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
                <!-- start content -->
                <div class="row single">
                    <div class="col-md-9 det">
                        <div class="single_left">
                            <div class="grid images_3_of_2">
                                <div class="flexslider">
                                    <!-- FlexSlider -->
                                    <script src="js/imagezoom.js"></script>
                                    <script defer src="js/jquery.flexslider.js"></script>
                                    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                                    <script>
                                        // Can also be used with $(document).ready()
                                        $(window).load(function() {
                                            $('.flexslider').flexslider({
                                                animation: "slide",
                                                controlNav: "thumbnails"
                                            });
                                        });
                                    </script>
                                    <!-- //FlexSlider-->

                                    <ul class="slides">
                                        <li data-thumb="images/ <%=hh.getImage1()%>">
                                            <div class="thumb-image"> <img src="images/<%=hh.getImage1()%>" data-imagezoom="true" class="img-responsive" > </div>
                                        </li>
                                        <li data-thumb="images/<%=hh.getImage2()%>">
                                            <div class="thumb-image"> <img src="images/<%=hh.getImage2()%>" data-imagezoom="true" class="img-responsive"> </div>
                                        </li>
                                        <li data-thumb="images/<%=hh.getImage3()%>">
                                            <div class="thumb-image"> <img src="images/<%=hh.getImage3()%>" data-imagezoom="true" class="img-responsive"> </div>
                                        </li>
<!--                                        <li data-thumb="images/">
                                            <div class="thumb-image"> <img src="images/" data-imagezoom="true" class="img-responsive"> </div>
                                        </li>-->
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="desc1 span_3_of_2">
                                <h3><%=hh.getName()%></h3>
                                <span class="brand">Brand: <a href="#"><%=hh.getProductBrand().getBName()%></a></span>
                                <br>
                                
                                <div class="price">
                                    <span class="text">Price: <%=hh.getPrice()%></span>
                                    <span class="price-new"></span><span class="price-old"></span> 
                                    <span class="price-tax">discount: <%=hh.getDiscount()%></span><br>
                                    
                                </div>
<!--                                <div class="det_nav1">
                                    <h4>Select a size :</h4>
                                    <div class=" sky-form col col-4">
                                        <ul>
                                            <li><label class="checkbox"><input type="checkbox" name="checkbox"><i></i>L</label></li>
                                            <li><label class="checkbox"><input type="checkbox" name="checkbox"><i></i>S</label></li>
                                            <li><label class="checkbox"><input type="checkbox" name="checkbox"><i></i>M</label></li>
                                            <li><label class="checkbox"><input type="checkbox" name="checkbox"><i></i>XL</label></li>
                                        </ul>
                                    </div>
                                </div>-->
                                <div class="btn_form">
                                    <a onclick="addtocart(<%=hh.getIdProduct()%>, 1,<%=hh.getPrice()%>)">buy</a>
                                </div>
                                

                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="single-bottom1">
                            <h6>Details</h6>
                            <p class="prod-desc"><%=hh.getDetails()%></p>
                        </div>
                        <div class="single-bottom2">
<!--                            <h6>Related Products</h6>-->
<!--                            <div class="product">
                                <div class="product-desc">
                                    <div class="product-img">
                                        <img src="images/w8.jpg" class="img-responsive " alt=""/>
                                    </div>
                                    <div class="prod1-desc">
                                        <h5><a class="product_link" href="#"></a></h5>
                                        <p class="product_descr"></p>									
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="product_price">
                                    <span class="price-access"></span>								
                                    <button class="button1"><span>Add to cart</span></button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="product">
                                <div class="product-desc">
                                    <div class="product-img">
                                        <img src="images/w10.jpg" class="img-responsive " alt=""/>
                                    </div>
                                    <div class="prod1-desc">
                                        <h5><a class="product_link" href="#">Excepteur sint</a></h5>
                                        <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="product_price">
                                    <span class="price-access">$597.51</span>								
                                    <button onclick="addtocart(1)" class="button1"><span>Add to cart</span></button>
                                </div>
                                <div class="clearfix"></div>
                            </div>-->
                        </div>
                    </div>	
<!--                    <div class="col-md-3">
                        <div class="w_sidebar">
                            <div class="w_nav1">
                                <h4>All</h4>
                                <ul>
                                    <li><a href="women.html">New arrivals</a></li>
                                    <li><a href="#">DSLR Camera</a></li>
                                    <li><a href="#">Digital Camera</a></li>
                                    <li><a href="#">Lens</a></li>
                                    <li><a href="#">Memory Card</a></li>
                                    <li><a href="#">Other Item</a></li>
                                </ul>	
                            </div>
                            <h3>filter by</h3>
                            <section  class="sky-form">
                                <h4>categories</h4>
                                <div class="row1 scroll-pane">
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>kurtas</label>
                                    </div>
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>kutis</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>churidar kurta</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>salwar</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>printed sari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>shree</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>	
                                    </div>
                                </div>
                            </section>
                            <section  class="sky-form">
                                <h4>brand</h4>
                                <div class="row1 scroll-pane">
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>shree</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                                    </div>
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>vishud</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>amari</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>shree</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>																								
                                    </div>
                                </div>
                            </section>
                            <section class="sky-form">
                                <h4>colour</h4>
                                <ul class="w_nav2">
                                    <li><a class="color1" href="#"></a></li>
                                    <li><a class="color2" href="#"></a></li>
                                    <li><a class="color3" href="#"></a></li>
                                    <li><a class="color4" href="#"></a></li>
                                    <li><a class="color5" href="#"></a></li>
                                    <li><a class="color6" href="#"></a></li>
                                    <li><a class="color7" href="#"></a></li>
                                    <li><a class="color8" href="#"></a></li>
                                    <li><a class="color9" href="#"></a></li>
                                    <li><a class="color10" href="#"></a></li>
                                    <li><a class="color12" href="#"></a></li>
                                    <li><a class="color13" href="#"></a></li>
                                    <li><a class="color14" href="#"></a></li>
                                    <li><a class="color15" href="#"></a></li>
                                    <li><a class="color5" href="#"></a></li>
                                    <li><a class="color6" href="#"></a></li>
                                    <li><a class="color7" href="#"></a></li>
                                    <li><a class="color8" href="#"></a></li>
                                    <li><a class="color9" href="#"></a></li>
                                    <li><a class="color10" href="#"></a></li>
                                </ul>
                            </section>
                            <section class="sky-form">
                                <h4>discount</h4>
                                <div class="row1 scroll-pane">
                                    <div class="col col-4">
                                        <label class="radio"><input type="radio" name="radio" checked=""><i></i>60 % and above</label>
                                        <label class="radio"><input type="radio" name="radio"><i></i>50 % and above</label>
                                        <label class="radio"><input type="radio" name="radio"><i></i>40 % and above</label>
                                    </div>
                                    <div class="col col-4">
                                        <label class="radio"><input type="radio" name="radio"><i></i>30 % and above</label>
                                        <label class="radio"><input type="radio" name="radio"><i></i>20 % and above</label>
                                        <label class="radio"><input type="radio" name="radio"><i></i>10 % and above</label>
                                    </div>
                                </div>						
                            </section>
                        </div>
                    </div>-->
                    <div class="clearfix"></div>		
                </div>
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
                    <li><i class="add"> </i>Jl. Haji Muhidin, Blok G no.69</li>
                    <li><i class="phone"> </i>025-2839341</li>
                    <li><a href="mailto:info@example.com"><i class="mail"> </i>info@sitename.com </a></li>

                </div>
                <div class="clearfix"> </div>
                <p>Copyrights © 2015 Gretong. All rights reserved | Template by <a href="http://w3layouts.com/">W3layouts</a></p>
            </div>
        </div>
    </body>
        <script>

        function addtocart(x,y,z) {
         
        $.ajax({
        type: "POST",
        url: "./addCart",
        data: "id=" +x+"&qty="+y+"&up="+z,
        cache: false,
        success: function (html) {
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
        data: "id=" +x+"&ty=all",
        cache: false,
        success: function (html) {
        refreshw();
        }
        });
        }
        function refreshw(){
        $.ajax({
        type: "POST",
        url: "cartHead.jsp",
        data: "id=d",
        cache: false,
        success: function (html) {
            
        $("#cart").html(html);
        }
        });
        }

    </script>
</html>
<%
    }
%>
