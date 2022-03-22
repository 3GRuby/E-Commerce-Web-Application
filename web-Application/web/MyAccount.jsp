<%-- 
    Document   : MyAccount
    Created on : Dec 26, 2015, 11:50:33 AM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="pojo.UserType"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<!DOCTYPE html>
<html lang="en">
    <%
        if (request.getSession().getAttribute("login") == null) {
            response.sendRedirect("index.jsp");
        }
        if (request.getParameter("fname") != null) {
            String fname = (String) request.getParameter("fname");
            String lname = (String) request.getParameter("lname");
            String email = (String) request.getParameter("email");
            String add1 = (String) request.getParameter("add1");
            String add2 = (String) request.getParameter("add2");
            String add3 = (String) request.getParameter("add3");
            String uname = (String) request.getParameter("uname");
            Session h = Connection.DB.getSessionFactory().openSession();
            Transaction g = h.beginTransaction();
            UserReg ff = (UserReg) request.getSession().getAttribute("login");
            ff.setFName(fname);
            ff.setLName(lname);
            ff.setEmail(email);
            ff.setAddress1(add1);
            ff.setAddress2(add2);
            ff.setAddress3(add3);
            ff.setUname(uname);
            h.update(ff);
            g.commit();
            h.flush();
            h.close();
        }
        
        
        if (request.getSession().getAttribute("login") != null) {
            pojo.UserReg u = (UserReg) request.getSession().getAttribute("login");
            if (u.getUserType().getIdUserType() == 1) {
                response.sendRedirect("index.jsp");
            }
        }

    %>
    
    
    
    <head>


        <title>CameraHub.lk </title>

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
    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="adminHome.html"><i class="fa fa-user fa-fw"></i>Admin Home</a>
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
                            <h1 class="page-header">My Account</h1>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h1>Profile</h1>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <!-- Nav tabs -->

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane fade in active" id="home-pills">

                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            My Account Profile
                                                        </div>
                                                        <!-- /.panel-heading -->
                                                        <div class="panel-body">
                                                            <div class="dataTable_wrapper">
                                                                <form action="#" method="post">
                                                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                                                        <tbody>

                                                                            <%

                                                                                try {

                                                                                    SessionFactory sf = Connection.DB.getSessionFactory();
                                                                                    Session s = sf.openSession();

                                                                                    Criteria c = s.createCriteria(pojo.UserReg.class);
                                                                                    UserType jj = new UserType();
                                                                                    jj.setIdUserType(2);
                                                                                    c.add(Restrictions.eq("userType", jj));
                                                                                    List<pojo.UserReg> li = c.list();

                                                                                    for (pojo.UserReg userReg : li) {

                                                                            %>

                                                                            <tr>
                                                                                <td>First Name</td>
                                                                                <td><input name="fname" value="<%=userReg.getFName()%>"/></td>
                                                                            </tr>

                                                                            <tr>
                                                                                <td>Last Name</td>
                                                                                <td><input name="lname" value="<%=userReg.getLName()%>"/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Email Address</td>
                                                                                <td><input name="email" value="<%=userReg.getEmail()%>"/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Address Line 1</td>
                                                                                <td><input name="add1" value="<%=userReg.getAddress1()%>"/></td>
                                                                            </tr>

                                                                            <tr>
                                                                                <td>Address Line 2</td>
                                                                                <td><input name="add2" value="<%=userReg.getAddress2()%>"/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Address Line 3</td>
                                                                                <td><input name="add3" value="<%=userReg.getAddress3()%>"/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>User name</td>
                                                                                <td><input name="uname" value="<%=userReg.getUname()%>"/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Gender</td>
                                                                                <td><%=userReg.getGender()%></td>

                                                                            </tr>

                                                                            <tr> 
                                                                                <td>status</td>
                                                                                <td><%=userReg.getStatus()%></td>

                                                                            </tr>



                                                                            <%
                                                                                    }

                                                                                    s.close();
                                                                                } catch (Exception e) {
                                                                                }

                                                                            %>

                                                                        </tbody>
                                                                    </table>

                                                                    <input type="submit" value="Update" id="userUpdate">
                                                                </form>
                                                            </div>
                                                            <!-- /.table-responsive -->

                                                        </div>
                                                        <!-- /.panel-body -->
                                                    </div>
                                                    <!-- /.panel -->
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

