<%-- 
    Document   : view_OthrerItem
    Created on : Feb 7, 2016, 8:23:16 AM
    Author     : ruby
--%>

<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="pojo.ProductType"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
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
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>DSLR Camera</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Lens</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Memory Card</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other</label>
                                    

                                </div>
                            </div>
                        </section>
                        <section  class="sky-form">
                            <h4>brand</h4>
                            <div class="row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Canon</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nikon</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Fujifilm</label>
                                </div>
                                <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Sony</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Panasonic</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Samsung</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Sigma</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Olympus</label>
                                    																								
                                </div>
                            </div>
                        </section>
                       
                    </div>
                </div>
                <!-- start content -->
                <div class="col-md-9 w_content">
                    <div class="women">
                        <a href="#"><h4>EOS Digital SLR Cameras- <span></span> </h4></a>
                        <ul class="w_nav">
                            <li>Sort : </li>
                            <li><a class="active" href="#">popular</a></li> |
                            <li><a href="#">new </a></li> |
                            <li><a href="#">discount</a></li> |
                            <li><a href="#">price: Low High </a></li> 
                            <div class="clear"></div>	
                        </ul>
                        <div class="clearfix"></div>	
                    </div>
                    <!-- grids_of_4 -->
                    
                    <%

                        int fr = 0;
                        if (request.getParameter("pid") != null) {
                            fr = Integer.parseInt(request.getParameter("pid")) * 4;
                        } else {
                            fr = 0;
                        }
                        System.out.print("--------------------------------------------------674327427842827");
                        Session ses1 = Connection.DB.getSessionFactory().openSession();
                        Criteria crXX = ses1.createCriteria(pojo.Product.class);
                        System.out.print("- - - - - - -  -    "+crXX.list().size());
                        ProductType l = new ProductType();
                        l.setIdType(4);
                        crXX.add(Restrictions.eq("productType", l));
                        int i = crXX.list().size() / 4;
                        if (crXX.list().size() % 4 == 1) {
                            i += 1;
                        }
                        crXX.setMaxResults(4);
                        crXX.setFirstResult(fr);

                        List<pojo.Product> lst = crXX.list();

                        for (pojo.Product pr : lst) {


                    %>

                    <div class="grids_of_4">
                        <div class="grid1_of_4">
                            <div class="content_box"><a href="details.jsp?id=<%=pr.getIdProduct()%>">
                                    <img src="images/<%=pr.getImage1()%>" class="img-responsive" alt=""/>
                                </a>
                                <h4><a href="details.jsp?id=<%=pr.getIdProduct()%>"><%= pr.getName()%></a></h4>
                                <p><%= pr.getProductBrand().getBName()%><br><%= pr.getModel().getModelName()%></p>

                                <div class="grid_1 simpleCart_shelfItem">

                                    <div class="item_add"><span class="item_price"><h6>Rs :<%=pr.getPrice()%></h6></span></div>
                                    <div class="item_add"><span class="item_price"><a onclick="addtocart(<%=pr.getIdProduct()%>, 1,<%=pr.getPrice()%>)" href="#">add to cart</a></span></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <% }%>

                    <div class="grids_of_4">
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="col-md-0" style="padding-left: 150px;" align="center">

                    <%
                        for (int x = 0; x < i; x++) {
                    %>

                    <a class="pagination" href="view_page.jsp?pid=<%=x%>"><%=x + 1%></a>



                    <%}%>

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
                    <li><i class="add"> </i>Camera Hub,No 2/176.gall road Matara</li>
                    <li><i class="phone"> </i>041-5684096</li>
                    <li><a href="mail:info@camZone.com"><i class="mail"> </i>info@camZone.com </a></li>

                </div>
                <div class="clearfix"> </div>
                <p>Copyrights © 2015 CamZone. All rights reserved</p>
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
