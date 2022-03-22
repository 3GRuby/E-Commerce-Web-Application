<%-- 
    Document   : privileges
    Created on : Dec 20, 2015, 1:42:06 PM
    Author     : ruby
--%>


<%@page import="pojo.UserReg"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
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
        <script type="text/javascript">

            var xmlhttp;
            var type;
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

            function getprve() {
                displayS = document.getElementById("pTable");
                var url = "privilegeTable.jsp";
                createXMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        displayS.innerHTML = xmlhttp.responseText;
                    }

                };

                xmlhttp.open("GET", url, false);
                xmlhttp.send(null);
            }

            function saveUpdateprev() {

                var buttonType, id, page_name, prive_name;
                buttonType = document.getElementById("prevButton").value;
                id = document.getElementById("prevID").value;
                page_name = document.getElementById("pname").value;
                prive_name = document.getElementById("privileg").value;

                alert('ffff');

                var url = "saveUpdatePrivileges1?button=" + buttonType + "&preID=" + id + "&pname=" + page_name + "&prive=" + prive_name;
                createXMLHttpRequest();

                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        getprve();
                        document.getElementById("prevButton").value = "Register";
                        document.getElementById("prevID").value = "0";
                        document.getElementById("pname").value = "";


                    }

                };
                //                alert("3");
                xmlhttp.open("GET", url, false);
                //                alert("4");
                xmlhttp.send(null);
            }
            function updateprv(id, page, Capabilt) {

                document.getElementById("prevID").value = id;
                document.getElementById("pname").value = page;
                document.getElementById("privileg").value = Capabilt;

                document.getElementById("prevButton").value = "Update";

                alert("IN");

            }


        </script>





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
                            <h1 class="page-header">Privileges Manage</h1>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h1>Privilege</h1>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-pills">

                                        <li><a href="#messages-pills" data-toggle="tab"><h4 style="font-weight: bold">Admin privilege</h4></a>
                                        </li>
                                        <li><a href="#new-pills" data-toggle="tab"><h4 style="font-weight: bold"> privilege Register</h4></a>
                                        </li>
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

                                                                        <%@include file="privilegeTable.jsp" %>

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
                                            <h2>Admin privilege</h2>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">

                                                </div>
                                                <!-- /.panel-heading -->
                                                <div class="panel-body">
                                                     <h3>All privilege</h3>
                                                    <div class="dataTable_wrapper">
                                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                            <thead>
                                                                <tr>
                                                                    <th>Privileges ID</th>
                                                                    <th>Page</th>
                                                                    <th>permission</th>
                                                                    <th>add Privileges</th>


                                                                </tr>
                                                            </thead>
                                                            <tbody id="adminTB">

                                                                <%@include file="adminTable.jsp" %>

                                                            </tbody>
                                                        </table>

                                                        <script type="text/javascript">

       
                                                        </script>
                                                    </div><br>
                                                    <!-- /.table-responsive -->
                                                    
                                                    <h2>Admin Privileges </h2>
                                                    
                                                    <div class="dataTable_wrapper">
                                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                            <thead>
                                                                <tr>
                                                                    <th>Privileges ID</th>
                                                                    <th>Page</th>
                                                                    <th>permission</th>
                                                                    <th>add Privileges</th>


                                                                </tr>
                                                            </thead>
                                                            <tbody id="adminTB">

                                                                <%@include file="adminAdd.jsp" %>

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
