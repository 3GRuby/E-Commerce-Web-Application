<%-- 
    Document   : ShippingOrder
    Created on : Feb 7, 2016, 7:57:50 AM
    Author     : ruby
--%>


<%@page import="pojo.UserReg"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.Date"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="pojo.CartHasProduct"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<!DOCTYPE html>
<html lang="en">
    <%
        Session j = Connection.DB.getSessionFactory().openSession();
        if (request.getParameter("id") != null) {
            Criteria k = j.createCriteria(CartHasProduct.class);
            k.add(Restrictions.eq("id", Integer.parseInt(request.getParameter("id").toString())));
            if (k.list().size() > 0) {
                CartHasProduct kk = (CartHasProduct) k.uniqueResult();
                kk.setStatus(1);
                kk.setDateShipped(new Date());
                Transaction kll = j.beginTransaction();
                j.update(kk);
                kll.commit();

            }
        }
        
        if (request.getSession().getAttribute("login") != null) {
            pojo.UserReg u = (UserReg) request.getSession().getAttribute("login");
            if (u.getUserType().getIdUserType() == 1) {
                response.sendRedirect("index.jsp");
            }
        }
    %>
    <script>

        function loadShippingDetails(chpID){
        window.open("shippingAddress.jsp?chpID="+chpID, "_blank", "toolbar=no,status=no,scrollbars=no,menubar=no,resizable=no,location=center, top=150, left=500, width=400, height=500");
        }
    </script>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>privilege</title>

        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <style type="text/css">
            table tr td:hover{
                cursor: pointer;
            }
        </style>

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
                            <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>

                    </li>

                </ul>
                <!-- /.navbar-top-links -->

                <%@include file="TopLink.jsp" %>
                <!-- /.navbar-static-side -->
            </nav>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Shipping Orders Manage</h1>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h1>purchase Orders</h1>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-pills">

                                        <li><a href="#messages-pills" data-toggle="tab"><h4 style="font-weight: bold">purchase Orders</h4></a>
                                        </li>
                                        <!--                                        <li><a href="#new-pills" data-toggle="tab"><h4 style="font-weight: bold">Complete Orders</h4></a>
                                        </li>-->
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">

                                        <div class="tab-pane fade" id="new-pills">
                                            <h4>Privileges</h4>
                                            <div class="panel panel-default"> 
                                                <div class="panel-heading">
                                                    Register Privileges
                                                </div>
                                                <div class="panel-body">
                                                    <div class="col-lg-6" cl>
                                                        <div class="panel-heading">
                                                            <i class="fa fa-bell fa-fw"></i>Privilege
                                                        </div>
                                                        <!-- /.panel-heading -->

                                                        <div class="panel-body">
                                                            <div class="dataTable_wrapper" style="overflow: auto;height: 400px"  >
                                                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                                    <thead>
                                                                        <tr>

                                                                            <th>Privileges ID</th>
                                                                            <th>Page</th>
                                                                            <th>permission</th>

                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="pTable">



                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <!-- /.table-responsive -->
                                                        </div>
                                                        <!-- /.panel-body -->
                                                    </div> 
                                                    <div class="col-lg-6">
                                                        <div class="panel-heading">

                                                            <i class="fa fa-bell fa-fw"></i> Privilege Register
                                                        </div>
                                                        <form action="saveUpdatePrivileges1">
                                                            <!-- /.panel-heading -->
                                                            <div class="panel-body">
                                                                <div class="list-group">
                                                                    <div class="form-group">
                                                                        <label>Page</label>
                                                                        <input type="hidden" id="prevID" value="0">
                                                                        <input class="form-control" placeholder="Enter text" name="pname" id="pname">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Privilege</label>
                                                                        <input class="form-control" placeholder="Enter text" name="prive" id="privileg">
                                                                    </div>
                                                                    <div class="col-lg-6" >

                                                                        <input  type="button" onclick="saveUpdateprev()"  class="btn btn-lg btn-success" value="Register" id="prevButton">
                                                                    </div>
                                                                    <!-- /.panel-body -->
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="messages-pills">
                                            <h2>Shipping Orders </h2>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">

                                                </div>
                                                <!-- /.panel-heading -->
                                                <div class="panel-body">
                                                    <h3>Shipping Orders</h3>
                                                    <div class="dataTable_wrapper" style="overflow: auto; height: 450px">
                                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                            <thead>
                                                                <tr>
                                                                    <th>Product ID</th>
                                                                    <th>Product Name</th>
                                                                    <th>Qty</th>
                                                                    <th>Added Date</th>
                                                                    <th>Action</th>

                                                                </tr>
                                                            </thead>
                                                            <tbody id="adminTB">

                                                                <%
                                                                    //Session j = Connection.DB.getSessionFactory().openSession();
                                                                    Criteria h = j.createCriteria(CartHasProduct.class);
                                                                    h.add(Restrictions.eq("status", 0));
                                                                    List<CartHasProduct> l = h.list();
                                                                    for (int y = 0; y < l.size(); y++) {
                                                                        CartHasProduct o = l.get(y);

                                                                %>

                                                                <tr  onclick="loadShippingDetails(<%= o.getId() %>);">
                                                                    <td><%=o.getProduct().getIdProduct()%></td>
                                                                    <td><%=o.getProduct().getName()%></td>
                                                                    <td><%=o.getQty()%></td>
                                                                    <td><%=o.getDateAdd()%></td>
                                                                    <td><a href="?id=<%=o.getId()%>"><button>Ship</button></a></td>
                                                                </tr>

                                                                <%}
                                                                %>

                                                            </tbody>
                                                        </table>

                                                        <script type="text/javascript">


                                                        </script>
                                                    </div><br>
                                                    <!-- /.table-responsive -->

                                                    <h2>Complete Orders</h2>

                                                    <div class="dataTable_wrapper">
                                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                            <thead>
                                                                <tr>
                                                                    <th>Product ID</th>
                                                                    <th>Product Name</th>
                                                                    <th>Qty</th>
                                                                    <th>Added Date</th>
                                                                    <th>shiped Date</th>
                                                                    <th>Action</th>

                                                                </tr>
                                                            </thead>
                                                            <tbody id="adminTB">

                                                                <%
                                                                    Criteria h2 = j.createCriteria(CartHasProduct.class);
                                                                    h2.add(Restrictions.eq("status", 1));
                                                                    List<CartHasProduct> l2 = h2.list();
                                                                    for (int y = 0; y < l2.size(); y++) {
                                                                        CartHasProduct o = l2.get(y);

                                                                %>

                                                                <tr onclick="loadShippingDetails(<%= o.getId() %>);">
                                                                    <td><%=o.getProduct().getIdProduct()%></td>
                                                                    <td><%=o.getProduct().getName()%></td>
                                                                    <td><%=o.getQty()%></td>
                                                                    <td><%=o.getDateAdd()%></td>
                                                                    <td><%=o.getDateShipped()%></td>
                                                                    <td><a href="?id7=<%=o.getId()%>"><button>deliver</button></a></td>
                                                                </tr>

                                                                <%}
                                                                %>

                                                            </tbody>
                                                        </table>

                                                    </div>

                                                </div>
                                                <!-- /.panel-body -->
                                            </div>

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
            <!-- /#wrapper -->

            <!-- jQuery -->
            <script src="bower_components/jquery/dist/jquery.min.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

            <!-- Metis Menu Plugin JavaScript -->
            <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

            <!-- Custom Theme JavaScript -->
            <script src="dist/js/sb-admin-2.js"></script>

    </body>

</html>

