<%-- 
    Document   : Notification
    Created on : Dec 27, 2015, 4:56:54 PM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<%@page import="java.util.Date"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="pojo.CartHasProduct"%>
<%@page import="pojo.CartHasProduct"%>
<%@page import="net.sf.cglib.proxy.Factory"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CamZone.lk</title>


        <script type="text/javascript" src="js/sweetalert.js"></script>
        <link type="text/css" href="css/sweetalert.css" rel="stylesheet"/>
        <script type="text/javascript" src="js/sweetalert.min.js"></script>
        <script type="text/javascript" src="js/sweetalert-dev.js"></script>

        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


        <script type="text/javascript">

//            

//
//            function stockUpdate() {
//                
//               
//                var xmlhttp;
//                if (window.XMLHttpRequest) {
//                    xmlhttp = new XMLHttpRequest();
//                } else {
//                    xmlhttp = new ActionXObject("Microsoft.XMLHTTP");
//                }
//                xmlhttp.onreadystatechange = function() {
//                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
//                        var x = xmlhttp.responseText;
//
//
//                    }
//                };
//                var x = z;
//                xmlhttp.open("POST", "qtyUpdate", true);
//                xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
//                xmlhttp.setRequestHeader("Cache-Control", "no-cache");
//                xmlhttp.send("userID=" + x);
//
//
//
//
//      }

            function stockUpdate() {

                swal({title: "An input!", text: "Write something interesting: gfrhytuj", type: "input", showCancelButton: true, closeOnConfirm: false, animation: "slide-from-top", inputPlaceholder: ""}, function(inputValue) {
                    if (inputValue === false)
                        return false;
                    if (inputValue === "") {
                        swal.showInputError("You need to write something!");
                        return false
                    }
                    modelVal(inputValue)
                    swal.close()
                });
            }

            function modelVal(x) {
                alert(x);
            }

            function closeDiv() {
                document.getElementById(x).style.display = 'none';
            }

            function updateQTY() {
                closeDiv();
                var pid = document.getElementById("proID").value;
                var qty = document.getElementById("newQTY").value;
//                alert(pid+' --  '+qty);
                var xmlhttp;
                if (window.XMLHttpRequest) {
                    xmlhttp = new XMLHttpRequest();
                } else {
                    xmlhttp = new ActionXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        var x = xmlhttp.responseText;


                    }
                };
                var x = z;
                xmlhttp.open("POST", "qtyUpdate", true);
                xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xmlhttp.setRequestHeader("Cache-Control", "no-cache");
                xmlhttp.send("userID=" + x);


            }

        </script>
 <%
        Session j = Connection.DB.getSessionFactory().openSession();
        if(request.getParameter("id")!=null){
            Criteria k =j.createCriteria(CartHasProduct.class);
            k.add(Restrictions.eq("id", Integer.parseInt(request.getParameter("id").toString())));
            if(k.list().size()>0){
               CartHasProduct kk =  (CartHasProduct)k.uniqueResult();
               kk.setStatus(1);
               kk.setDateShipped(new Date());
               Transaction kll= j.beginTransaction();
               j.update(kk);
               kll.commit();
               
            }
        }
    %>

    </head>

    <body>

        <div id="wrapper" style="background-color: white">
            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color: white"  >
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

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Notification</h1>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h1>Notification</h1>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="dataTable_wrapper">
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

                                            <tr>
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
