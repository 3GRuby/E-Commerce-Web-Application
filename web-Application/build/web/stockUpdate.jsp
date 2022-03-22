<%-- 
    Document   : stockUpdate
    Created on : Feb 7, 2016, 11:26:41 AM
    Author     : ruby
--%>

<%@page import="pojo.Product"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <script>
            var xmlhttp;

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
            function updateQty() {
                var proID = document.getElementById("proID").value;
                var newQty = document.getElementById("newQTY").value;

                alert(proID + " -- " + newQty);

                var url = "qtyUpdate?proID=" + proID + "&newQTY=" + newQty;
                createXMLHttpRequest();

                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        window.close();
                        
                    }

                };
              
                xmlhttp.open("GET", url, false);

                xmlhttp.send(null);
            }
        </script>
    </head>
    <body>
        <div class="col-lg-6">
            <div class="panel-heading">
                <i class="glyphicon glyphicon-edit"></i> Stock Update
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <%
                    if (request.getParameter("proID") != null) {
                        Session ses = Connection.DB.getSessionFactory().openSession();

                        Criteria cr = ses.createCriteria(pojo.Product.class);
                        cr.add(Restrictions.eq("idProduct", Integer.parseInt(request.getParameter("proID"))));

                        Product p = (pojo.Product) cr.uniqueResult();
                %>
                <div class="list-group">
                    <div class="form-group">
                        <label>Product Name</label>
                        <input type="hidden" id="proID" value="<%= p.getIdProduct()%>">
                        <input id="productName" class="form-control" placeholder="Enter text" name="pname" required="required" value="<%= p.getName()%>">
                    </div>
                    <div class="form-group">
                        <label>New Qty <span style="font-size: 10px">(Available Qty : <%= p.getQty()%>)</span></label>

                        <input type="number" min="0" id="newQTY" class="form-control" placeholder="Enter text" name="nqty" required="required">
                    </div>
                    <div class="col-lg-6" >
                        <input onclick="updateQty();" id="brandButton" type="button" class="btn btn-lg btn-success" value="UPDATE">
                    </div>
                    <!-- /.panel-body -->
                </div>
                <%}%>
            </div>
        </div>
    </body>
</html>
