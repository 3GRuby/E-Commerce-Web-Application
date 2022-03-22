<%@page import="pojo.UserReg"%>
6<%-- 
    Document   : new
    Created on : Dec 23, 2015, 4:19:54 PM
    Author     : ruby
--%>

<%@page import="pojo.ProductBrand"%>
<%@page import="pojo.Model"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<!DOCTYPE html>
<html>
    <%

        if (request.getParameter("logout") != null) {
            String gc = request.getParameter("logout").toString();
            if (gc.equals("true")) {
                request.getSession().invalidate();
                response.sendRedirect("index.jsp");
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

        <title>CamZone.lk</title>
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


        <style>
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

            function test() {
                createXMLHttpRequest();
                //              
                xmlhttp.onreadystatechange = function() {
                    alert(xmlhttp.readyState + " --- " + xmlhttp.status);

                };
                //                alert("3");
                xmlhttp.open("GET", "updatebrand", false);
                //                alert("4");
                xmlhttp.send(null);

            }

            function saveUpdateBrand() {
                var buttonType, id, bname, status;
                buttonType = document.getElementById("brandButton").value;
                id = document.getElementById("brandID").value;
                bname = document.getElementById("brandName").value;
                status = document.getElementById("brandStatus").value;



                var url = "addbrand?button=" + buttonType + "&id=" + id + "&bname=" + bname + "&status=" + status;
                createXMLHttpRequest();

                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        getDe();

                        document.getElementById("brandButton").value = "Register";
                        document.getElementById("brandID").value = "0";
                        document.getElementById("brandName").value = "";
                    }

                };
                //                alert("3");
                xmlhttp.open("GET", url, false);
                //                alert("4");
                xmlhttp.send(null);
            }

            function updateCat(id, name, status, type, extra) {

                var nameID = type + "Name";
                var statusID = type + "StatusDeactive";
                var button = type + "Button";
                var extraZ = extra;
                if (status == "Active") {
                    statusID = type + "StatusActive";
                }

                document.getElementById(type + "ID").value = id;
                document.getElementById(nameID).value = name;
                document.getElementById(statusID).selected = "true";
                if (extraZ != "no") {
                    document.getElementById(type + "Extra" + extraZ).selected = "true";

                }
                document.getElementById(button).value = "Update";


                if (document.getElementById("button").value == "Update") {

                }
            }

            function getDe() {
                displayS = document.getElementById("distable");
                var url = "brandTable.jsp";
                createXMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        displayS.innerHTML = xmlhttp.responseText;
                    }

                };

                xmlhttp.open("GET", url, false);
                xmlhttp.send(null);
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
                    <a class="navbar-brand" href="adminHome.html" style="font-weight: bold "><i class="fa fa-user fa-fw"></i>Admin Home</a>
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
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Categories Page</h1>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i><h1>Categories</h1></i>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Collapsible Accordion Panel Group
                                                </div>
                                                <!-- .panel-heading -->
                                                <div class="panel-body">
                                                    <div class="panel-group" id="accordion">
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> Brand Add | Update</a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseOne" class="panel-collapse collapse in">
                                                                <div class="panel-body">
                                                                    <form id="brandForm" action="addbrand" method="post">
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                <h4 class="panel-title">
                                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">  <i class="fa fa-list-ul"> Brand Add | Update</i></a>
                                                                                </h4>
                                                                            </div>
                                                                            <div id="collapseOne" class="panel-collapse collapse in">
                                                                                <div class="panel-body">
                                                                                    <div class="panel-group" id="accordion">
                                                                                        <div class="panel panel-default">
                                                                                            <div class="panel-heading">
                                                                                                <h4 class="panel-title">

                                                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Brand add</a>
                                                                                                </h4>
                                                                                            </div>
                                                                                            <div id="collapseOne" class="panel-collapse collapse in">
                                                                                                <div class="panel-body">
                                                                                                    <div class="col-lg-6" cl>
                                                                                                        <div class="panel-heading">
                                                                                                            <i class="fa fa-bell fa-fw"></i>Product Brand
                                                                                                        </div>
                                                                                                        <!-- /.panel-heading -->
                                                                                                        <div class="panel-body">
                                                                                                            <div class="dataTable_wrapper" style="overflow: auto;height: 400px"  >
                                                                                                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" >
                                                                                                                    <thead>
                                                                                                                        <tr>

                                                                                                                            <th>Brand name</th>
                                                                                                                            <th>Status</th>
                                                                                                                        </tr>
                                                                                                                    </thead>
                                                                                                                    <tbody id="distable">

                                                                                                                        <%@include file="brandTable.jsp" %>
                                                                                                                    </tbody>
                                                                                                                </table>
                                                                                                            </div>
                                                                                                            <!-- /.table-responsive -->
                                                                                                        </div>
                                                                                                        <!-- /.panel-body -->
                                                                                                    </div> 
                                                                                                    <div class="col-lg-6">
                                                                                                        <div class="panel-heading">
                                                                                                            <i class="fa fa-bell fa-fw"></i> Product Brand
                                                                                                        </div>
                                                                                                        <!-- /.panel-heading -->
                                                                                                        <div class="panel-body">
                                                                                                            <div class="list-group">
                                                                                                                <div class="form-group">
                                                                                                                    <label>Brand Name</label>
                                                                                                                    <input type="hidden" id="brandID" value="0">
                                                                                                                    <input id="brandName" class="form-control" placeholder="Enter text" name="bname" required="required">
                                                                                                                </div>
                                                                                                                <div class="form-group">
                                                                                                                    <label>status</label>
                                                                                                                    <select id="brandStatus" name="status" class="form-control" required="required">

                                                                                                                        <option id="brandStatusActive">Active</option>
                                                                                                                        <option id="brandStatusDeactive">Deactivate</option>
                                                                                                                    </select>
                                                                                                                </div>
                                                                                                                <div class="col-lg-6" >
                                                                                                                    <input onclick="saveUpdateBrand()" id="brandButton" type="button" class="btn btn-lg btn-success" value="Register">
                                                                                                                </div>
                                                                                                                <!-- /.panel-body -->
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <!-- .panel-body -->
                                                                                    </div>
                                                                                    <!-- /.panel -->
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </form> 
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Volume Add | Update</a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseTwo" class="panel-collapse collapse">
                                                                <form action="addvolume" method="post">
                                                                    <div class="panel-body">
                                                                        <div class="panel-group" id="accordion">
                                                                            <div class="panel panel-default">
                                                                                <div class="panel-heading">
                                                                                    <h4 class="panel-title">
                                                                                        <i class="fa fa-envelope fa-fw"></i>
                                                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Volume add</a>
                                                                                    </h4>
                                                                                </div>
                                                                                <div id="collapseOne" class="panel-collapse collapse in">
                                                                                    <div class="panel-body">
                                                                                        <div class="col-lg-6" cl>
                                                                                            <div class="panel-heading">
                                                                                                <i class="fa fa-bell fa-fw"></i>Product Volume
                                                                                            </div>
                                                                                            <!-- /.panel-heading -->
                                                                                            <div class="panel-body">
                                                                                                <div class="dataTable_wrapper" style="overflow: auto;height: 400px" >
                                                                                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                                                                        <thead>
                                                                                                            <tr>

                                                                                                                <th>volume name</th>
                                                                                                                <th>Status</th>
                                                                                                                <th>Model</th>
                                                                                                            </tr>
                                                                                                        </thead>

                                                                                                        <tbody id="Voltable">

                                                                                                            <%@include file="VolTable.jsp" %>
                                                                                                        </tbody>

                                                                                                    </table>
                                                                                                </div>
                                                                                                <!-- /.table-responsive -->
                                                                                            </div>
                                                                                            <!-- /.panel-body -->
                                                                                        </div> 
                                                                                        <div class="col-lg-6">
                                                                                            <div class="panel-heading">
                                                                                                <i class="fa fa-bell fa-fw"></i> Product volume
                                                                                            </div>
                                                                                            <!-- /.panel-heading -->
                                                                                            <div class="panel-body">
                                                                                                <div class="list-group">
                                                                                                    <div class="form-group">
                                                                                                        <label>volume Name</label>
                                                                                                        <input type="hidden" id="volumeID">
                                                                                                        <input id="volumeName" class="form-control" placeholder="Enter text" name="vname" required="required">
                                                                                                    </div>
                                                                                                    <div class="form-group">
                                                                                                        <label>Model</label>
                                                                                                        <select name="model_1" class="form-control" id="model_c" required="required">
                                                                                                            <%
                                                                                                                Session ses = Connection.DB.getSessionFactory().openSession();
                                                                                                                Criteria cr = ses.createCriteria(pojo.Model.class);
                                                                                                                List<pojo.Model> liZ = cr.list();
                                                                                                                for (int i = 0; i < liZ.size(); i++) {
                                                                                                                    Model m = liZ.get(i);
                                                                                                            %>                
                                                                                                            <option id="volumeExtra<%= m.getIdmodel()%>" value="<%= m.getIdmodel()%>"><%= m.getModelName()%></option>
                                                                                                            <%}%>
                                                                                                        </select>
                                                                                                    </div>
                                                                                                    <div class="form-group">
                                                                                                        <label>status</label>
                                                                                                        <select name="vstatus" class="form-control" id="VolumeStatus">

                                                                                                            <option id="volumeStatusActive">Active</option>
                                                                                                            <option id="volumeStatusDeactive">Deactivate</option>
                                                                                                        </select>
                                                                                                    </div>
                                                                                                    <div class="col-lg-6" >

                                                                                                        <input onclick="saveUpdateVolume()" id="volumeButton" type="button" class="btn btn-lg btn-success btn-block" value="Register">
                                                                                                    </div>
                                                                                                    <!-- /.panel-body -->
                                                                                                    <script>

            function getvol() {
                displayS = document.getElementById("Voltable");
                var url = "VolTable.jsp";
                createXMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        displayS.innerHTML = xmlhttp.responseText;
                    }

                };

                xmlhttp.open("GET", url, false);
                xmlhttp.send(null);
            }


            function saveUpdateVolume() {
                var buttonType, id, vname, vstatus, model_1;
                buttonType = document.getElementById("volumeButton").value;
                id = document.getElementById("volumeID").value;
                vname = document.getElementById("volumeName").value;
                vstatus = document.getElementById("VolumeStatus").value;
                model_1 = document.getElementById("model_c").value;


                var url = "addvolume?button=" + buttonType + "&vid=" + id + "&vname=" + vname + "&vstatus=" + vstatus + "&model_1=" + model_1;
                createXMLHttpRequest();

                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        getvol();
                        document.getElementById("volumeButton").value = "Register";
                        document.getElementById("volumeID").value = "0";
                        document.getElementById("volumeName").value = "";


                    }

                };
                //                alert("3");
                xmlhttp.open("GET", url, false);
                //                alert("4");
                xmlhttp.send(null);
            }
                                                                                                    </script>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!-- .panel-body -->
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Model Add | Update</a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseThree" class="panel-collapse collapse">
                                                                <div class="panel-body">
                                                                    <form action="addmodel">
                                                                        <div class="panel-body">
                                                                            <div class="panel-group" id="accordion">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading">
                                                                                        <h4 class="panel-title">
                                                                                            <i class="fa fa-envelope fa-fw"></i>
                                                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Model add</a>
                                                                                        </h4>
                                                                                    </div>
                                                                                    <div id="collapseOne" class="panel-collapse collapse in">
                                                                                        <div class="panel-body">
                                                                                            <div class="col-lg-6" cl>
                                                                                                <div class="panel-heading">
                                                                                                    <i class="fa  fa-camera  fa-fw"></i>Product Model
                                                                                                </div>
                                                                                                <!-- /.panel-heading -->
                                                                                                <div class="panel-body">
                                                                                                    <div class="dataTable_wrapper" style="overflow: auto;height: 400px" >
                                                                                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example" id="modelTable1">

                                                                                                            <thead>
                                                                                                                <tr>

                                                                                                                    <th>Model name</th>
                                                                                                                    <th>Brand</th>
                                                                                                                    <th>Status</th>
                                                                                                                </tr>
                                                                                                            </thead>
                                                                                                            <tbody id="modelTable">

                                                                                                                <%@include file="modelTable.jsp" %>
                                                                                                            </tbody>
                                                                                                        </table>
                                                                                                    </div>
                                                                                                    <!-- /.table-responsive -->
                                                                                                </div>
                                                                                                <!-- /.panel-body -->
                                                                                            </div> 
                                                                                            <div  class="col-lg-6">
                                                                                                <div class="panel-heading">
                                                                                                    <i class="fa  fa-camera  fa-fw"></i> Product Model
                                                                                                </div>
                                                                                                <!-- /.panel-heading -->
                                                                                                <div class="panel-body">
                                                                                                    <div class="list-group">
                                                                                                        <div class="form-group">
                                                                                                            <label>Product Model</label>
                                                                                                            <input type="hidden" id="modelID">
                                                                                                            <input id="modelName" class="form-control" placeholder="Enter text" name="mname" required="required">
                                                                                                        </div>
                                                                                                        <div class="form-group">
                                                                                                            <label>Brand</label>
                                                                                                            <select name="pbrand" class="form-control" id="pbrand" required="required">
                                                                                                                <%
                                                                                                                    Session ses2 = Connection.DB.getSessionFactory().openSession();
                                                                                                                    Criteria cr2 = ses2.createCriteria(pojo.ProductBrand.class);

                                                                                                                    List<pojo.ProductBrand> list2 = cr2.list();

                                                                                                                    for (int i = 0; i < list2.size(); i++) {
                                                                                                                        System.out.print("--------------------------   jkhkj");
                                                                                                                        ProductBrand b = list2.get(i);

                                                                                                                %>
                                                                                                                <option id="modelExtra<%= b.getIdBrand()%>" value="<%=b.getIdBrand()%>"><%=b.getBName()%></option>

                                                                                                                <%}%>


                                                                                                            </select>
                                                                                                        </div>
                                                                                                        <div class="form-group">
                                                                                                            <label>status</label>
                                                                                                            <select name="mstatus" class="form-control" id="modelStatus">

                                                                                                                <option id="modelStatusActive">Active</option>
                                                                                                                <option id="modelStatusDeactive">Deactivate</option>
                                                                                                            </select>
                                                                                                        </div>

                                                                                                        <div class="col-lg-6" >

                                                                                                            <input id="modelButton"  onclick="saveUpdateModel()"  type="button" class="btn btn-lg btn-success btn-block" value="Register">
                                                                                                        </div>
                                                                                                        <!-- /.panel-body -->

                                                                                                        <script>

            function getmodel() {
                displayS = document.getElementById("modelTable");
                var url = "modelTable.jsp";
                createXMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        displayS.innerHTML = xmlhttp.responseText;
                    }

                };

                xmlhttp.open("GET", url, false);
                xmlhttp.send(null);
            }


            function saveUpdateModel() {
                var buttonType, id, mname, mstatus, pbrand;
                buttonType = document.getElementById("modelButton").value;
                id = document.getElementById("modelID").value;
                mname = document.getElementById("modelName").value;
                mstatus = document.getElementById("modelStatus").value;
                pbrand = document.getElementById("pbrand").value;


                var url = "addmodel?button=" + buttonType + "&mid=" + id + "&mname=" + mname + "&mstatus=" + mstatus + "&pbrand=" + pbrand;
                createXMLHttpRequest();

                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        getmodel();
                        document.getElementById("modelButton").value = "Register";
                        document.getElementById("modelID").value = "0";
                        document.getElementById("modelName").value = "";


                    }

                };
                //                alert("3");
                xmlhttp.open("GET", url, false);
                //                alert("4");
                xmlhttp.send(null);
            }
                                                                                                        </script>





                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!-- .panel-body -->
                                                                            </div>
                                                                            <!-- /.panel -->
                                                                        </div>
                                                                    </form>                            
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">Type Add | Update</a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapsefour" class="panel-collapse collapse">
                                                                <div class="panel-body">
                                                                    <form action="addType">
                                                                        <div class="panel-body">
                                                                            <div class="panel-group" id="accordion">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading">
                                                                                        <h4 class="panel-title">
                                                                                            <i class="fa fa-envelope fa-fw"></i>
                                                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Type add</a>
                                                                                        </h4>
                                                                                    </div>
                                                                                    <div id="collapseOne" class="panel-collapse collapse in">
                                                                                        <div class="panel-body">
                                                                                            <div class="col-lg-6" cl>
                                                                                                <div class="panel-heading">
                                                                                                    <i class="fa  fa-camera  fa-fw"></i>Product Type
                                                                                                </div>
                                                                                                <!-- /.panel-heading -->
                                                                                                <div class="panel-body">
                                                                                                    <div class="dataTable_wrapper" style="overflow: auto;height: 400px" >
                                                                                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example" id="typeTable1">

                                                                                                            <thead>
                                                                                                                <tr>
                                                                                                                    <th>Type name</th>
                                                                                                                    <th>Status</th>
                                                                                                                </tr>
                                                                                                            </thead>
                                                                                                            <tbody id="typeTable">

                                                                                                                <%@include file="typeTable.jsp" %>
                                                                                                            </tbody>
                                                                                                        </table>
                                                                                                    </div>
                                                                                                    <!-- /.table-responsive -->
                                                                                                </div>
                                                                                                <!-- /.panel-body -->
                                                                                            </div> 
                                                                                            <div id="idYako" class="col-lg-6">
                                                                                                <div class="panel-heading">
                                                                                                    <i class="fa  fa-camera  fa-fw"></i> Product Type
                                                                                                </div>
                                                                                                <!-- /.panel-heading -->
                                                                                                <div class="panel-body">
                                                                                                    <div class="list-group">
                                                                                                        <div class="form-group">
                                                                                                            <label>Product Type</label>
                                                                                                            <input type="hidden" id="typeID">
                                                                                                            <input id="typeName" class="form-control" placeholder="Enter text" name="tname" required="required">
                                                                                                        </div>

                                                                                                        <div class="form-group">
                                                                                                            <label>status</label>
                                                                                                            <select name="tstatus" class="form-control" id="typestatus" required="required">

                                                                                                                <option id="typeStatusActive">Active</option>
                                                                                                                <option id="typeStatusDeactive">Deactivate</option>
                                                                                                            </select>
                                                                                                        </div>

                                                                                                        <div class="col-lg-6" >

                                                                                                            <input id="typeButton" onclick="saveUpdateType()" type="button" class="btn btn-lg btn-success btn-block" value="Register">
                                                                                                        </div>
                                                                                                        <!-- /.panel-body -->

                                                                                                        <script>

            function getType() {
                displayS = document.getElementById("typeTable");
                var url = "typeTable.jsp";
                createXMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        displayS.innerHTML = xmlhttp.responseText;
                    }

                };

                xmlhttp.open("GET", url, false);
                xmlhttp.send(null);
            }


            function saveUpdateType() {

                alert("loll")
                var buttonType, id, tname, tstatus, pbrand;
                buttonType = document.getElementById("typeButton").value;
                id = document.getElementById("typeID").value;
                tname = document.getElementById("typeName").value;
                tstatus = document.getElementById("typestatus").value;


                var url = "addType?button=" + buttonType + "&tid=" + id + "&tname=" + tname + "&tstatus=" + tstatus;
                createXMLHttpRequest();

                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        getType();
                        document.getElementById("typeButton").value = "Register";
                        document.getElementById("typeID").value = "0";
                        document.getElementById("typeName").value = "";


                    }

                };
                //                alert("3");
                xmlhttp.open("GET", url, false);
                //                alert("4");
                xmlhttp.send(null);
            }
                                                                                                        </script>



                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!-- .panel-body -->
                                                                            </div>
                                                                            <!-- /.panel -->
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- .panel-body -->
                                            </div>
                                            <!-- /.panel -->
                                        </div>
                                        <!-- /.col-lg-12 -->
                                    </div>   
                                </div>
                            </div></div></div></div></div>
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
