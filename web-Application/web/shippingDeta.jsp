<%-- 
    Document   : shippingDeta
    Created on : Jan 14, 2016, 4:22:53 PM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        if (request.getSession().getAttribute("login") != null) {
            pojo.UserReg u = (UserReg) request.getSession().getAttribute("login");
            if (u.getUserType().getIdUserType() == 1) {
      //          response.sendRedirect("index.jsp");
            }
        }
        
        %>
        
        
        
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
            <div class="container">
                <div class="header_top">
                    <div class="top_right">
                        <ul>
                            <li><a href="Help.jsp">help</a></li>|
                            <li><a href="contact.jsp">Contact</a></li>|


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
        <div class="col-md-6 s-c">
            <div class="navbar-header" style="background-color: white" >
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" >
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--<a class="navbar-brand" href="adminHome.html" style="font-weight: bold "><i class="fa fa-user fa-fw"></i>Shipping Address</a>-->
            </div>
        </div>
    <center>
        <div class="panel-default">
           
            <div class="col-lg-12">
                <h1 class="page-header">Shipping Data </h1>
            </div>
            <div class="col-lg-12">
                <table class="table">
                    <tr>
                        <td> <hr style=" top: 70px;"></td>
                    </tr>
                </table>
            </div>
            
            <div class="col-lg-12">
                <div class="col-lg-6">
                    <table class="table table-striped table-bordered table-hover">
                        <form action="placeO">
                            <tr>
                                <td>Address1</td>
                                <td><input name='ad1' class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>Address2</td>
                                <td><input name='ad2' class="form-control" /></td>
                            </tr>
                            <tr>
                                <td>Address3</td>
                                <td><input name='ad3' class="form-control" /></td>
                            </tr>
                            <tr>
                                <td>city</td>
                                <td><input name='ci' class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>province</td>
                                <td><input name='p' class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>country</td>
                                <td><input name='cun' class="form-control"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit"/>
                                </td>
                            </tr>
                        </form>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
                <table class="table">
                    <tr>
                        <td> <hr style=" top: 100px;"></td>
                    </tr>
                </table>
            </div>

    </center>

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
            <div class="col-md-4 s-c">
                <div class="stay">
                    <div class="stay-left">
<!--                        <form>
                            <input type="text" placeholder="Enter your email to join our newsletter" required="">
                        </form>-->
                    </div>
<!--                    <div class="btn-1">
                        <form>
                            <input type="submit" value="join">
                        </form>
                    </div>-->
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</body>
</html>

