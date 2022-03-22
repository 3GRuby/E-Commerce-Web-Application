<%-- 
    Document   : add_product
    Created on : Dec 16, 2015, 9:14:17 PM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


        <title>CamZone.lk</title>

        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <script type="text/javascript">
            function getFileName() {
                var filename = document.getElementById("selectFile").value;
                //var f = filename.split("\\"); //use if view the fake path
                //alert(f[f.length-1]);
                document.getElementById("fileName").value = filename;
            }
        </script>

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

            function getproduct() {

                displayS = document.getElementById("productTabl2");
                var url = "productTable.jsp";
                createXMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        displayS.innerHTML = "";
                        displayS.innerHTML = xmlhttp.responseText;
                    }

                };

                xmlhttp.open("GET", url, false);
                xmlhttp.send(null);
            }

            function saveUpdateproduct() {
                alert('aaaa');
                var buttonType, prodID, pro_name, pro_qty, pro_price, pro_img1, pro_img2, pro_img3, pro_Discount, pro_details, pro_status, pro_ptype, pro_pbrand, pro_pmodel, pro_pvolume;
                buttonType = document.getElementById("productButton").value;
                prodID = document.getElementById("proID").value;
                pro_name = document.getElementById("pname").value;
                pro_qty = document.getElementById("pqty").value;
                pro_price = document.getElementById("price").value;
                pro_img1 = document.getElementById("img1").value;
                pro_img2 = document.getElementById("img2").value;
                pro_img3 = document.getElementById("img3").value;
                pro_Discount = document.getElementById("pdiscount").value;
                pro_details = document.getElementById("pdetails").value;
                pro_status = document.getElementById("pstatus").value;
                pro_ptype = document.getElementById("ptype").value;
                pro_pbrand = document.getElementById("pbrand").value;
                pro_pmodel = document.getElementById("pmodel").value;
                pro_pvolume = document.getElementById("pvolume").value;

                alert('ffff');

                var url = "productRegister?button=" + buttonType + "&proID=" + prodID + "&pname=" + pro_name + "&pqty=" + pro_qty + "&price=" + pro_price + "&img1=" + pro_img1 + "&img2=" + pro_img2 + "&img3=" + pro_img3 + "&pdiscount=" + pro_Discount + "&pdetails=" + pro_details + "&status=" + pro_status + "&ptype=" + pro_ptype + "&pbrand=" + pro_pbrand + "&pmodel=" + pro_pmodel + "&pvolume=" + pro_pvolume;
                createXMLHttpRequest();

                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        getproduct();
                        document.getElementById("productButton").value = "Register";
                        document.getElementById("proID").value = "0";
                        document.getElementById("pname").value = "";
                        document.getElementById("pqty").value = "";
                        document.getElementById("price").value = "";
                        document.getElementById("img1").value = "";
                        document.getElementById("img2").value = "";
                        document.getElementById("img3").value = "";
                        document.getElementById("pdiscount").value = "";
                        document.getElementById("pdetails").value = "";
                        document.getElementById("pstatus").value = "";
                        document.getElementById("ptype").value = "";
                        document.getElementById("pbrand").value = "";
                        document.getElementById("pmodel").value = "";
                        document.getElementById("pvolume").value = "";

                    }

                };
                //                alert("3");
                xmlhttp.open("POST", url, false);
                //                alert("4");
                xmlhttp.send(null);
            }
            function updateproduct(prodID, pro_name, pro_qty, pro_price, pro_img1, pro_img2, pro_img3, pro_Discount, pro_details, pro_status, pro_ptype, pro_pbrand, pro_pmodel, pro_pvolume) {



//                alert('hello');
                document.getElementById("proID").value = prodID;
                document.getElementById("pname").value = pro_name;
                document.getElementById("pqty").value = pro_qty;
                document.getElementById("price").value = pro_price;
                document.getElementById("img1").value = pro_img1;
                document.getElementById("img2").value = pro_img2;
                document.getElementById("img3").value = pro_img3;
                document.getElementById("pdiscount").value = pro_Discount;
                document.getElementById("pdetails").value = pro_details;
//                alert("hrrr "+pro_status);

                var statusID = "StatusDeactive";
                if (pro_status == "active") {
                    statusID = "StatusActive";
                }

                document.getElementById(statusID).selected = "true";
                document.getElementById("typeoption" + pro_ptype).selected = "true";
                document.getElementById("brandoption" + pro_pbrand).selected = "true";
                document.getElementById("modeloption" + pro_pmodel).selected = "true";
                document.getElementById("volumeoption" + pro_pvolume).selected = "true";
                document.getElementById("productButton").value = "Update";

                document.getElementById("tab1").className = "";
                document.getElementById("tab2").className = "active";
                

            }

        </script>





    </head>

    <body >

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

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Product Page</h1>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h1>Product</h1>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-pills">
                                        <li id="tab1" class="active"><a href="#home-pills" data-toggle="tab"><h4 style="font-weight: bold">View</h4></a>
                                        </li>

                                        <li id="tab2"><a href="#messages-pills" data-toggle="tab" ><h4 style="font-weight: bold">Register & Update</h4></a>
                                        </li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane fade in active" id="home-pills">
                                            <h4></h4>
                                            <div class="row">
                                                <form action="productRegister">
                                                    <div class="col-lg-12">
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                view add product
                                                            </div>
                                                            <!-- /.panel-heading -->
                                                            <div class="panel-body">
                                                                <div class="dataTable_wrapper" style="overflow: auto; height: 600px">
                                                                    <div id="productTabl2">
                                                                        <%@include file="productTable.jsp" %>
                                                                    </div>
                                                                </div>
                                                                <!-- /.table-responsive -->

                                                            </div>
                                                            <!-- /.panel-body -->
                                                        </div>
                                                        <!-- /.panel -->
                                                    </div>
                                                    <!-- /.col-lg-12 -->
                                                </form>
                                            </div>
                                            <!-- /.row -->
                                        </div>

                                        <div class="tab-pane fade" id="messages-pills">
                                            <h4>Product Registration</h4>
                                            <div class="panel-body">
                                                <form action="productRegister" method="post">
                                                    <div class="row">

                                                        <div class="col-lg-6">

                                                            <div class="form-group">
                                                                <label>Product Name</label>
                                                                <input type="hidden" id="proID" value="0">
                                                                <input class="form-control" placeholder="Enter text" name="pname" id="pname"> 
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Quantity</label>
                                                                <input class="form-control" placeholder="Enter text" name="pqty" id="pqty">
                                                            </div>

                                                            <div class="form-group">
                                                                <label>Product Price</label>
                                                                <input class="form-control" placeholder="Enter text" name="price" id="price">
                                                            </div>
                                                            <table>
                                                                <div class="form-group">
                                                                    <label>Uplord Image </label>
                                                                    <input type="file">
                                                                </div>
                                                                <tr>
                                                                    <td><div class="imageid" name="img1" id="img1"><img src="1.jpg" width="120px" higth="120px"/></div></td>
                                                                    <td width="3px" higth="3px"></td>
                                                                    <td><div class="imageid" name="img1" id="img2"><img src="1.jpg" width="120px" higth="120px"/> </div></td>
                                                                    <td width="3px" higth="3px"></td>
                                                                    <td><div class="imageid" name="img1" id="img3"><img src="1.jpg" width="120px" higth="120px"/> </div></td>
                                                                </tr>
                                                            </table><br>
                                                            <div class="form-group">
                                                                <label>product Discount</label>
                                                                <input class="form-control" placeholder="Enter text" name="pdiscount" id="pdiscount">
                                                            </div>
                                                            <div class="form-group">
                                                                <label>product Details</label>
                                                                <textarea name="pdetails" id="pdetails" class="form-control" placeholder="Enter text"></textarea>

                                                            </div>

                                                            <div class="form-group">
                                                                <label>Status Update</label>
                                                                <select class="form-control" name="status" id='pstatus' >
                                                                    <option id="StatusActive" value="active" >Active</option>
                                                                    <option id="StatusDeactive" value="deactive">Deactive</option>
                                                                </select> 
                                                            </div>
                                                            <div class="form-group">
                                                                <label>product type</label>
                                                                <select class="form-control" name="ptype" id='ptype'>
                                                                    <%
                                                                        Session ses2 = Connection.DB.getSessionFactory().openSession();
                                                                        Criteria cr2 = ses2.createCriteria(pojo.ProductType.class);
                                                                        List<pojo.ProductType> lis2 = cr2.list();

                                                                        for (int t = 0; t < lis2.size(); t++) {


                                                                            pojo.ProductType pt = lis2.get(t);


                                                                    %>
                                                                    <option id="typeoption<%=pt.getIdType()%>" value="<%=pt.getIdType()%>"><%=pt.getTypeName()%></option>

                                                                    <%}%>
                                                                </select> 
                                                            </div>
                                                            <div class="form-group">
                                                                <label>product brand</label>
                                                                <select class="form-control" name="pbrand" id='pbrand'>
                                                                    <%
                                                                        Session ses = Connection.DB.getSessionFactory().openSession();
                                                                        Criteria cr = ses.createCriteria(pojo.ProductBrand.class);
                                                                        List<pojo.ProductBrand> lis1 = cr.list();

                                                                        for (int i = 0; i < lis1.size(); i++) {


                                                                            pojo.ProductBrand b = lis1.get(i);


                                                                    %>
                                                                    <option id="brandoption<%=b.getIdBrand()%>" value="<%=b.getIdBrand()%>"><%=b.getBName()%></option>

                                                                    <%}%>
                                                                </select> 
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Model</label>
                                                                <select class="form-control" name="pmodel" id='pmodel'>
                                                                    <%
                                                                        Session ses3 = Connection.DB.getSessionFactory().openSession();
                                                                        Criteria cr3 = ses3.createCriteria(pojo.Model.class);
                                                                        List<pojo.Model> lis3 = cr3.list();

                                                                        for (int m = 0; m < lis3.size(); m++) {

                                                                            pojo.Model mod = lis3.get(m);




                                                                    %>
                                                                    <option id="modeloption<%=mod.getIdmodel()%>" value="<%=mod.getIdmodel()%>"><%=mod.getModelName()%></option>

                                                                    <%}%>
                                                                </select> 
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Volume</label>
                                                                <select class="form-control" name="pvolume" id='pvolume'>
                                                                    <%
                                                                        Session ses4 = Connection.DB.getSessionFactory().openSession();
                                                                        Criteria cr4 = ses4.createCriteria(pojo.Volume.class);
                                                                        List<pojo.Volume> lis4 = cr4.list();

                                                                        for (int v = 0; v < lis4.size(); v++) {

                                                                            pojo.Volume vol = lis4.get(v);
                                                                    %>
                                                                    <option id="volumeoption<%=vol.getIdvolume()%>" value="<%=vol.getIdvolume()%>"><%=vol.getVol()%></option>

                                                                    <%}%>

                                                                </select>

                                                            </div>
                                                            <div class="col-lg-5">
                                                                <input data-toggle="tab" href="#home-pills"  type="button" onclick="saveUpdateproduct()"  class="btn btn-lg btn-success btn-block" value="Register" id="productButton">


                                                            </div>


                                                        </div>

                                                    </div>
                                                </form>                
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

