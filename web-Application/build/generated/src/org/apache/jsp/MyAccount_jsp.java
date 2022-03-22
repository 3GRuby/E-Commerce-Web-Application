package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pojo.UserReg;
import org.hibernate.Transaction;
import pojo.UserType;
import org.hibernate.criterion.Restrictions;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public final class MyAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/TopLink.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    ");

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

    
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <title>CameraHub.lk </title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core CSS -->\n");
      out.write("        <link href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- MetisMenu CSS -->\n");
      out.write("        <link href=\"bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"dist/css/sb-admin-2.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom Fonts -->\n");
      out.write("        <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function getFileName() {\n");
      out.write("                var filename = document.getElementById(\"selectFile\").value;\n");
      out.write("                //var f = filename.split(\"\\\\\"); //use if view the fake path\n");
      out.write("                //alert(f[f.length-1]);\n");
      out.write("                document.getElementById(\"fileName\").value = filename;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("            <!-- Navigation -->\n");
      out.write("            <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\" style=\"margin-bottom: 0\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"adminHome.html\"><i class=\"fa fa-user fa-fw\"></i>Admin Home</a>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-header -->\n");
      out.write("\n");
      out.write("                <ul class=\"nav navbar-top-links navbar-right\">\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                        <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\n");
      out.write("                            <i class=\"fa fa-envelope fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\n");
      out.write("                        </a>\n");
      out.write("                       \n");
      out.write("\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                        <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\n");
      out.write("                            <i class=\"fa fa-user fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-user\">\n");
      out.write("                            <li><a href=\"#\"><i class=\"fa fa-user fa-fw\"></i> User Profile</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"#\"><i class=\"fa fa-gear fa-fw\"></i> Settings</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li><a href=\"login.html\"><i class=\"fa fa-sign-out fa-fw\"></i> Logout</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("                <!-- /.navbar-top-links -->\n");
      out.write("\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"navbar-default sidebar\" role=\"navigation\"  >\n");
      out.write("            <div class=\"sidebar-nav navbar-collapse\" style=\"background-color: white\" >\n");
      out.write("                <ul class=\"nav\" id=\"side-menu\" style=\"padding-left: 10px\">\n");
      out.write("                    <li class=\"sidebar-search\">\n");
      out.write("                        <div class=\"input-group \">\n");
      out.write("                            <img src=\"images/logo/logo.jpg\" style=\"width: 170px; height: 60px;padding-right:20px\"/>\n");
      out.write("\n");
      out.write("                            </span>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /input-group -->\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"adminHome.jsp\"><i></i><h4 style=\"font-weight: bold ;font-family: Comic Sans MS\">Admin Dashboard</h4></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"report.jsp\"><i ></i><h4 style=\"font-weight: bold ;font-family: Comic Sans MS\">Report Chart</h4></a>\n");
      out.write("\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"Notification.jsp\"><h4 style=\"font-weight: bold ;font-family: Comic Sans MS\">Notification</h4></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"addproduct.jsp\"><i ></i><h4 style=\"font-weight: bold ;font-family: Comic Sans MS\">Product</h4></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"stock_in.jsp\"><i></i><h4 style=\"font-weight: bold ;font-family: Comic Sans MS\">Stock</h4></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"catogory.jsp\"><i ></i><h4 style=\"font-weight: bold ;font-family: Comic Sans MS\"> Categories</h4></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"privileges.jsp\"><i></i><h4 style=\"font-weight: bold ;font-family: Comic Sans MS\">privilege</h4></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"ShippingOrder.jsp\"><i></i><h4 style=\"font-weight: bold ;font-family: Comic Sans MS\">Shipping</h4></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.sidebar-collapse -->\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("                <!-- /.navbar-static-side -->\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            <!-- Page Content -->\n");
      out.write("            <div id=\"page-wrapper\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-12\">\n");
      out.write("                            <h1 class=\"page-header\">My Account</h1>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-12\">\n");
      out.write("                            <div class=\"panel panel-default\">\n");
      out.write("                                <div class=\"panel-heading\">\n");
      out.write("                                    <h1>Profile</h1>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /.panel-heading -->\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <!-- Nav tabs -->\n");
      out.write("\n");
      out.write("                                    <!-- Tab panes -->\n");
      out.write("                                    <div class=\"tab-content\">\n");
      out.write("                                        <div class=\"tab-pane fade in active\" id=\"home-pills\">\n");
      out.write("\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-lg-12\">\n");
      out.write("                                                    <div class=\"panel panel-default\">\n");
      out.write("                                                        <div class=\"panel-heading\">\n");
      out.write("                                                            My Account Profile\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <!-- /.panel-heading -->\n");
      out.write("                                                        <div class=\"panel-body\">\n");
      out.write("                                                            <div class=\"dataTable_wrapper\">\n");
      out.write("                                                                <form action=\"#\" method=\"post\">\n");
      out.write("                                                                    <table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\">\n");
      out.write("\n");
      out.write("                                                                        <tbody>\n");
      out.write("\n");
      out.write("                                                                            ");


                                                                                try {

                                                                                    SessionFactory sf = Connection.DB.getSessionFactory();
                                                                                    Session s = sf.openSession();

                                                                                    Criteria c = s.createCriteria(pojo.UserReg.class);
                                                                                    UserType jj = new UserType();
                                                                                    jj.setIdUserType(2);
                                                                                    c.add(Restrictions.eq("userType", jj));
                                                                                    List<pojo.UserReg> li = c.list();

                                                                                    for (pojo.UserReg userReg : li) {

                                                                            
      out.write("\n");
      out.write("\n");
      out.write("                                                                            <tr>\n");
      out.write("                                                                                <td>First Name</td>\n");
      out.write("                                                                                <td><input name=\"fname\" value=\"");
      out.print(userReg.getFName());
      out.write("\"/></td>\n");
      out.write("                                                                            </tr>\n");
      out.write("\n");
      out.write("                                                                            <tr>\n");
      out.write("                                                                                <td>Last Name</td>\n");
      out.write("                                                                                <td><input name=\"lname\" value=\"");
      out.print(userReg.getLName());
      out.write("\"/></td>\n");
      out.write("                                                                            </tr>\n");
      out.write("                                                                            <tr>\n");
      out.write("                                                                                <td>Email Address</td>\n");
      out.write("                                                                                <td><input name=\"email\" value=\"");
      out.print(userReg.getEmail());
      out.write("\"/></td>\n");
      out.write("                                                                            </tr>\n");
      out.write("                                                                            <tr>\n");
      out.write("                                                                                <td>Address Line 1</td>\n");
      out.write("                                                                                <td><input name=\"add1\" value=\"");
      out.print(userReg.getAddress1());
      out.write("\"/></td>\n");
      out.write("                                                                            </tr>\n");
      out.write("\n");
      out.write("                                                                            <tr>\n");
      out.write("                                                                                <td>Address Line 2</td>\n");
      out.write("                                                                                <td><input name=\"add2\" value=\"");
      out.print(userReg.getAddress2());
      out.write("\"/></td>\n");
      out.write("                                                                            </tr>\n");
      out.write("                                                                            <tr>\n");
      out.write("                                                                                <td>Address Line 3</td>\n");
      out.write("                                                                                <td><input name=\"add3\" value=\"");
      out.print(userReg.getAddress3());
      out.write("\"/></td>\n");
      out.write("                                                                            </tr>\n");
      out.write("                                                                            <tr>\n");
      out.write("                                                                                <td>User name</td>\n");
      out.write("                                                                                <td><input name=\"uname\" value=\"");
      out.print(userReg.getUname());
      out.write("\"/></td>\n");
      out.write("                                                                            </tr>\n");
      out.write("                                                                            <tr>\n");
      out.write("                                                                                <td>Gender</td>\n");
      out.write("                                                                                <td>");
      out.print(userReg.getGender());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                                                            </tr>\n");
      out.write("\n");
      out.write("                                                                            <tr> \n");
      out.write("                                                                                <td>status</td>\n");
      out.write("                                                                                <td>");
      out.print(userReg.getStatus());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                                                            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                            ");

                                                                                    }

                                                                                    s.close();
                                                                                } catch (Exception e) {
                                                                                }

                                                                            
      out.write("\n");
      out.write("\n");
      out.write("                                                                        </tbody>\n");
      out.write("                                                                    </table>\n");
      out.write("\n");
      out.write("                                                                    <input type=\"submit\" value=\"Update\" id=\"userUpdate\">\n");
      out.write("                                                                </form>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <!-- /.table-responsive -->\n");
      out.write("\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <!-- /.panel-body -->\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <!-- /.panel -->\n");
      out.write("                                                </div>\n");
      out.write("                                                <!-- /.col-lg-12 -->\n");
      out.write("                                            </div>\n");
      out.write("                                            <!-- /.row -->\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- /.panel-body -->\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /.panel -->\n");
      out.write("                            </div>\n");
      out.write("                            <!-- /.col-lg-12 -->\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /.row -->\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.container-fluid -->\n");
      out.write("                </div>\n");
      out.write("                <!-- /#page-wrapper -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!-- /#wrapper -->\n");
      out.write("\n");
      out.write("            <!-- jQuery -->\n");
      out.write("            <script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("            <!-- Bootstrap Core JavaScript -->\n");
      out.write("            <script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("            <!-- Metis Menu Plugin JavaScript -->\n");
      out.write("            <script src=\"bower_components/metisMenu/dist/metisMenu.min.js\"></script>\n");
      out.write("\n");
      out.write("            <!-- Custom Theme JavaScript -->\n");
      out.write("            <script src=\"dist/js/sb-admin-2.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
