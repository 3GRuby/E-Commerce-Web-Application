<%-- 
    Document   : adminHome
    Created on : Dec 18, 2015, 12:41:53 AM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<!DOCTYPE html>
<html lang="en">
    <%
        if (request.getSession().getAttribute("login") != null) {
            pojo.UserReg u = (UserReg) request.getSession().getAttribute("login");
            if (u.getUserType().getIdUserType() == 1) {
                response.sendRedirect("index.jsp");
            }
        }
    %>


    <%

        if (request.getParameter("logout") != null) {
            String gc = request.getParameter("logout").toString();
            if (gc.equals("true")) {
                request.getSession().invalidate();
                response.sendRedirect("index.jsp");
                return;
            }
        } else if (request.getSession().getAttribute("login") == null) {
            response.sendRedirect("index.jsp");
        }
        if (request.getSession().getAttribute("login") != null) {
            pojo.UserReg u = (UserReg) request.getSession().getAttribute("login");
            if (u.getUserType().getIdUserType() == 1) {
                response.sendRedirect("index.jsp");
            }
        }

    %>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CamZone.lk</title>

        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!--  CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Timeline CSS -->
        <link href="dist/css/timeline.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="bower_components/morrisjs/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <body>

        <div id="wrapper" style="background-color: white">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color: white" >
                <div class="navbar-header" style="background-color: white" >
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" >
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="adminHome.jsp" style="font-weight: bold "><i class="fa fa-user fa-fw"></i>Admin Home</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="MyAccount.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <!--                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                                                    </li>-->
                            <li class="divider"></li>
                            <li><a href="?logout=true"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>

                    </li>

                </ul>
                <!-- /.navbar-top-links -->

                <%@include file="TopLink.jsp" %>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper" style=" background:url('images/bac/bac-4.jpg');background-repeat: no-repeat;width:1113px;height:610px;" >
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Admin DashBoard</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa  fa-user   fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>MY Account</div>
                                    </div>
                                </div>
                            </div>
                            <a href="MyAccount.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View Account</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-gift  fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>PRODUCT</div>
                                    </div>
                                </div>
                            </div>
                            <a href="addproduct.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View product</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-users  fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>Users</div>
                                    </div>
                                </div>
                            </div>
                            <a href="userData.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View User Data</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-cubes fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>Stock</div>
                                    </div>
                                </div>
                            </div>
                            <a href="stock_in.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View Stock</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- row-2-->
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-file-text  fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>Report</div>
                                    </div>
                                </div>
                            </div>
                            <a href="report.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View Report</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-list-ol fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>Categories</div>
                                    </div>
                                </div>
                            </div>
                            <a href="catogory.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View Categories</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-key  fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>Privileges</div>
                                    </div>
                                </div>
                            </div>
                            <a href="privileges.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View privileges</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-bell  fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>Notification</div>
                                    </div>
                                </div>
                            </div>
                            <a href="Notification.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View Notification</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- row-3 -->
                <div class="row">

                    <!--                    <div class="col-lg-3 col-md-6">
                                            <div class="panel panel-success">
                                                <div class="panel-heading">
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <i class="fa fa-bell  fa-5x"></i>
                                                        </div>
                                                        <div class="col-xs-9 text-right">
                                                            <div class="huge">#</div>
                                                            <div>Notification</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <a href="Notification.jsp">
                                                    <div class="panel-footer">
                                                        <span class="pull-left">View Notification</span>
                                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>-->
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-truck  fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">#</div>
                                        <div>Shipping</div>
                                    </div>
                                </div>
                            </div>
                            <a href="ShippingOrder.jsp">
                                <div class="panel-footer">
                                    <span class="pull-left">View Shipping</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>

                </div>

                <!-- /.row -->

                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="bower_components/raphael/raphael-min.js"></script>


        <!-- Custom Theme JavaScript -->
        <script src="dist/js/sb-admin-2.js"></script>

    </body>

</html>

