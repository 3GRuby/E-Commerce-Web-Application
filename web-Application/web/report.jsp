<%-- 
    Document   : report
    Created on : Dec 22, 2015, 2:33:03 AM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="pojo.CartHasProduct"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
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


        <title>Report</title>

        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="bower_components/morrisjs/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <body>

        <div id="wrapper">

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
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                       

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
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

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Complete Orders</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h1>Report</h1>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body" style="overflow: auto; width:1008px; height: 600px">
                                <!-- Nav tabs -->

                                   <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                            <thead>
                                                                <tr>
                                                                    <th>Product ID</th>
                                                                    <th>Product Name</th>
                                                                    <th>Qty</th>
                                                                    <th>Added Date</th>
                                                                    <th>shiped Date</th>
                                                                    <th>price</th>
                                                                    

                                                                </tr>
                                                            </thead>
                                                            <tbody id="adminTB">

                                                                <%
                                                                         Session j = Connection.DB.getSessionFactory().openSession();
                                                                    Criteria h2 = j.createCriteria(CartHasProduct.class);
                                                                    h2.add(Restrictions.eq("status", 1));
                                                                    List<CartHasProduct> l2 = h2.list();
                                                                    double w=0;
                                                                    
                                                                    for (int y = 0; y < l2.size(); y++) {
                                                                        CartHasProduct o = l2.get(y);
                                                                        w+=Double.parseDouble(o.getProduct().getPrice())*o.getQty();
                                                                %>

                                                                <tr>
                                                                    <td><%=o.getProduct().getIdProduct()%></td>
                                                                    <td><%=o.getProduct().getName()%></td>
                                                                    <td><%=o.getQty()%></td>
                                                                    <td><%=o.getDateAdd()%></td>
                                                                    <td><%=o.getDateShipped()%></td>
                                                                    <td><%=Double.parseDouble(o.getProduct().getPrice())*o.getQty()%></td>
                                                                </tr>
                                                                        
                                                                <%}
                                                                %>

                                                            </tbody>
                                                            <tfoot>
                                                                <tr>
                                                                    <td colspan="5" style="color: #0075b0"><h1>Total</h1></td>
                                                                    <td><h1 style="color: tomato" >Rs : <%=w%></h1></td>
                                                                </tr>
                                                                
                                                            </tfoot>
                                                        </table>


                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                </div>
                <!-- /.row -->
<!--                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Area Chart Example
                            </div>
                             /.panel-heading 
                            <div class="panel-body">
                                <div id="morris-area-chart"></div>
                            </div>
                             /.panel-body 
                        </div>
                         /.panel 
                    </div>
                     /.col-lg-6 
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Bar Chart Example
                            </div>
                             /.panel-heading 
                            <div class="panel-body">
                                <div id="morris-bar-chart"></div>
                            </div>
                             /.panel-body 
                        </div>
                         /.panel 
                    </div>
                     /.col-lg-6 
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Line Chart Example
                            </div>
                             /.panel-heading 
                            <div class="panel-body">
                                <div id="morris-line-chart"></div>
                            </div>
                             /.panel-body 
                        </div>
                         /.panel 
                    </div>
                     /.col-lg-6 
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Donut Chart Example
                            </div>
                             /.panel-heading 
                            <div class="panel-body">
                                <div id="morris-donut-chart"></div>
                            </div>
                             /.panel-body 
                        </div>
                         /.panel 
                    </div>
                     /.col-lg-6 
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Morris.js Usage
                            </div>
                             /.panel-heading 
                            <div class="panel-body">
                                <p>Morris.js is a jQuery based charting plugin created by Olly Smith. In SB Admin, we are using the most recent version of Morris.js which includes the resize function, which makes the charts fully responsive. The documentation for Morris.js is available on their website, <a target="_blank" href="http://morrisjs.github.io/morris.js/">http://morrisjs.github.io/morris.js/</a>.</p>
                                <a target="_blank" class="btn btn-default btn-lg btn-block" href="http://morrisjs.github.io/morris.js/">View Morris.js Documentation</a>
                            </div>
                             /.panel-body 
                        </div>
                         /.panel 
                    </div>
                     /.col-lg-6 
                </div>-->
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="../bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="../bower_components/raphael/raphael-min.js"></script>
        <script src="../bower_components/morrisjs/morris.min.js"></script>
        <script src="../js/morris-data.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../dist/js/sb-admin-2.js"></script>

    </body>

</html>

