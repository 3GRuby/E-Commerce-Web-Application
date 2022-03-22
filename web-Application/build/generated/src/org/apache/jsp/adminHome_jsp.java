package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pojo.UserReg;

public final class adminHome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    ");

        if (request.getSession().getAttribute("login") != null) {
            pojo.UserReg u = (UserReg) request.getSession().getAttribute("login");
            if (u.getUserType().getIdUserType() == 1) {
                response.sendRedirect("index.jsp");
            }
        }
    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");


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

    
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>CamZone.lk</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core CSS -->\n");
      out.write("        <link href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!--  CSS -->\n");
      out.write("        <link href=\"bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Timeline CSS -->\n");
      out.write("        <link href=\"dist/css/timeline.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"dist/css/sb-admin-2.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Morris Charts CSS -->\n");
      out.write("        <link href=\"bower_components/morrisjs/morris.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom Fonts -->\n");
      out.write("        <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"wrapper\" style=\"background-color: white\">\n");
      out.write("\n");
      out.write("            <!-- Navigation -->\n");
      out.write("            <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\" style=\"margin-bottom: 0;background-color: white\" >\n");
      out.write("                <div class=\"navbar-header\" style=\"background-color: white\" >\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\" >\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"adminHome.jsp\" style=\"font-weight: bold \"><i class=\"fa fa-user fa-fw\"></i>Admin Home</a>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-header -->\n");
      out.write("\n");
      out.write("                <ul class=\"nav navbar-top-links navbar-right\">\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                        <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\n");
      out.write("                            <i class=\"fa fa-user fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-user\">\n");
      out.write("                            <li><a href=\"MyAccount.jsp\"><i class=\"fa fa-user fa-fw\"></i> User Profile</a>\n");
      out.write("                            </li>\n");
      out.write("                            <!--                        <li><a href=\"#\"><i class=\"fa fa-gear fa-fw\"></i> Settings</a>\n");
      out.write("                                                    </li>-->\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li><a href=\"?logout=true\"><i class=\"fa fa-sign-out fa-fw\"></i> Logout</a>\n");
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
      out.write("            <div id=\"page-wrapper\" style=\" background:url('images/bac/bac-4.jpg');background-repeat: no-repeat;width:1113px;height:610px;\" >\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <h1 class=\"page-header\">Admin DashBoard</h1>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.col-lg-12 -->\n");
      out.write("                </div>\n");
      out.write("                <!-- /.row -->\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa  fa-user   fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>MY Account</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"MyAccount.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View Account</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-gift  fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>PRODUCT</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"addproduct.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View product</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-users  fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>Users</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"userData.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View User Data</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-cubes fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>Stock</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"stock_in.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View Stock</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- row-2-->\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-file-text  fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>Report</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"report.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View Report</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-list-ol fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>Categories</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"catogory.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View Categories</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-key  fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>Privileges</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"privileges.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View privileges</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-wrench fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>Site Changes</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"blank.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View changes</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- row-3 -->\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-bell  fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>Notification</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"Notification.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View Notification</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-3\">\n");
      out.write("                                        <i class=\"fa fa-truck  fa-5x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-9 text-right\">\n");
      out.write("                                        <div class=\"huge\">#</div>\n");
      out.write("                                        <div>Shipping</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"ShippingOrder.jsp\">\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <span class=\"pull-left\">View Shipping</span>\n");
      out.write("                                    <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- /.row -->\n");
      out.write("\n");
      out.write("                <!-- /.row -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /#page-wrapper -->\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- /#wrapper -->\n");
      out.write("\n");
      out.write("        <!-- jQuery -->\n");
      out.write("        <script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core JavaScript -->\n");
      out.write("        <script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Metis Menu Plugin JavaScript -->\n");
      out.write("        <script src=\"bower_components/metisMenu/dist/metisMenu.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Morris Charts JavaScript -->\n");
      out.write("        <script src=\"bower_components/raphael/raphael-min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Custom Theme JavaScript -->\n");
      out.write("        <script src=\"dist/js/sb-admin-2.js\"></script>\n");
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
