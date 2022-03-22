<%-- 
    Document   : Diliver_charge
    Created on : Feb 14, 2016, 6:16:34 PM
    Author     : ruby
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
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
        <script src="js/simpleCart.min.js"></script>
    </head>
    <body>
        <!-- header_top -->
        <div class="top_bg">
            <%@include file="header.jsp" %>
        </div>
        <!-- header -->

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Deliver Charges</h1>
                    </div>
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h1>Price Table  <a href="checkout.jsp"/><input type="submit" value="Back To Cart" class='btn-sm btn-success'/></h1>

                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <!-- Nav tabs -->

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="home-pills">

                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        District & Charges
                                                    </div>
                                                    <!-- /.panel-heading -->
                                                    <div class="panel-body">
                                                        <div class="dataTable_wrapper" style="overflow: auto;  height: 600px">
                                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">


                                                                <tbody>
                                                                    <tr>
                                                                        <td>District</td>
                                                                        <td>Charge</td>

                                                                    </tr>

                                                                    <%
                                                                        try {

                                                                            SessionFactory sf = Connection.DB.getSessionFactory();
                                                                            Session s = sf.openSession();

                                                                            Criteria c = s.createCriteria(pojo.DileverCharge.class);
                                                                            List<pojo.DileverCharge> li = c.list();

                                                                            for (pojo.DileverCharge dc : li) {

                                                                    %>



                                                                    <tr>
                                                                        <td contenteditable="true"><%=dc.getDistrict()%></td>
                                                                        <td contenteditable="true">Rs :<%=dc.getCharge()%></td>
                                                                    </tr>


                                                                    <%
                                                                            }
                                                                            s.close();
                                                                        } catch (Exception e) {
                                                                        }

                                                                    %>
                                                                </tbody>
                                                            </table>

                                                        </div>

                                                    </div>

                                                    <!-- /.panel-body -->
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div style="height: 600px; width: 660px">

                                                    <img width="630px" height="650px" src="images/Map.jpg"/>

                                                </div>

                                            </div>
                                            <!-- /.col-lg-12 -->
                                        </div>
                                        <!-- /.row -->
                                    </div>


                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

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
                                        </div>-->
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