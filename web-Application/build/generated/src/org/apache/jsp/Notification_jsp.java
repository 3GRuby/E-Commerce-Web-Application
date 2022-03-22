package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pojo.UserReg;
import java.util.Date;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import pojo.CartHasProduct;
import pojo.CartHasProduct;
import net.sf.cglib.proxy.Factory;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public final class Notification_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        ");

        if (request.getSession().getAttribute("login") != null) {
            pojo.UserReg u = (UserReg) request.getSession().getAttribute("login");
            if (u.getUserType().getIdUserType() == 1) {
                response.sendRedirect("index.jsp");
            }
        }
        
        
        
      out.write("\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>CamZone.lk</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/sweetalert.js\"></script>\n");
      out.write("        <link type=\"text/css\" href=\"css/sweetalert.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/sweetalert.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/sweetalert-dev.js\"></script>\n");
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
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("//            \n");
      out.write("\n");
      out.write("//\n");
      out.write("//            function stockUpdate() {\n");
      out.write("//                \n");
      out.write("//               \n");
      out.write("//                var xmlhttp;\n");
      out.write("//                if (window.XMLHttpRequest) {\n");
      out.write("//                    xmlhttp = new XMLHttpRequest();\n");
      out.write("//                } else {\n");
      out.write("//                    xmlhttp = new ActionXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("//                }\n");
      out.write("//                xmlhttp.onreadystatechange = function() {\n");
      out.write("//                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {\n");
      out.write("//                        var x = xmlhttp.responseText;\n");
      out.write("//\n");
      out.write("//\n");
      out.write("//                    }\n");
      out.write("//                };\n");
      out.write("//                var x = z;\n");
      out.write("//                xmlhttp.open(\"POST\", \"qtyUpdate\", true);\n");
      out.write("//                xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');\n");
      out.write("//                xmlhttp.setRequestHeader(\"Cache-Control\", \"no-cache\");\n");
      out.write("//                xmlhttp.send(\"userID=\" + x);\n");
      out.write("//\n");
      out.write("//\n");
      out.write("//\n");
      out.write("//\n");
      out.write("//      }\n");
      out.write("\n");
      out.write("            function stockUpdate() {\n");
      out.write("\n");
      out.write("                swal({title: \"An input!\", text: \"Write something interesting: gfrhytuj\", type: \"input\", showCancelButton: true, closeOnConfirm: false, animation: \"slide-from-top\", inputPlaceholder: \"\"}, function(inputValue) {\n");
      out.write("                    if (inputValue === false)\n");
      out.write("                        return false;\n");
      out.write("                    if (inputValue === \"\") {\n");
      out.write("                        swal.showInputError(\"You need to write something!\");\n");
      out.write("                        return false\n");
      out.write("                    }\n");
      out.write("                    modelVal(inputValue)\n");
      out.write("                    swal.close()\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function modelVal(x) {\n");
      out.write("                alert(x);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function closeDiv() {\n");
      out.write("                document.getElementById(x).style.display = 'none';\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function updateQTY() {\n");
      out.write("                closeDiv();\n");
      out.write("                var pid = document.getElementById(\"proID\").value;\n");
      out.write("                var qty = document.getElementById(\"newQTY\").value;\n");
      out.write("//                alert(pid+' --  '+qty);\n");
      out.write("                var xmlhttp;\n");
      out.write("                if (window.XMLHttpRequest) {\n");
      out.write("                    xmlhttp = new XMLHttpRequest();\n");
      out.write("                } else {\n");
      out.write("                    xmlhttp = new ActionXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("                }\n");
      out.write("                xmlhttp.onreadystatechange = function() {\n");
      out.write("                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {\n");
      out.write("                        var x = xmlhttp.responseText;\n");
      out.write("\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("                var x = z;\n");
      out.write("                xmlhttp.open(\"POST\", \"qtyUpdate\", true);\n");
      out.write("                xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');\n");
      out.write("                xmlhttp.setRequestHeader(\"Cache-Control\", \"no-cache\");\n");
      out.write("                xmlhttp.send(\"userID=\" + x);\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write(" ");

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
    
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"wrapper\" style=\"background-color: white\">\n");
      out.write("            <!-- Navigation -->\n");
      out.write("            <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\" style=\"margin-bottom: 0;background-color: white\"  >\n");
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
      out.write("                        <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\n");
      out.write("                            <i class=\"fa fa-envelope fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        \n");
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
      out.write("                            <li><a href=\"login.jsp\"><i class=\"fa fa-sign-out fa-fw\"></i> Logout</a>\n");
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
      out.write("                            <h1 class=\"page-header\">Notification</h1>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-12\">\n");
      out.write("                            <div class=\"panel panel-default\">\n");
      out.write("                                <div class=\"panel-heading\">\n");
      out.write("                                    <h1>Notification</h1>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /.panel-heading -->\n");
      out.write("                                <div class=\"dataTable_wrapper\">\n");
      out.write("                                    <table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Product ID</th>\n");
      out.write("                                                <th>Product Name</th>\n");
      out.write("                                                <th>Qty</th>\n");
      out.write("                                                <th>Added Date</th>\n");
      out.write("                                                <th>Action</th>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody id=\"adminTB\">\n");
      out.write("\n");
      out.write("                                            ");

                                                //Session j = Connection.DB.getSessionFactory().openSession();
                                                Criteria h = j.createCriteria(CartHasProduct.class);
                                                h.add(Restrictions.eq("status", 0));
                                                List<CartHasProduct> l = h.list();
                                                for (int y = 0; y < l.size(); y++) {
                                                    CartHasProduct o = l.get(y);

                                            
      out.write("\n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(o.getProduct().getIdProduct());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(o.getProduct().getName());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(o.getQty());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(o.getDateAdd());
      out.write("</td>\n");
      out.write("                                                <td><a href=\"?id=");
      out.print(o.getId());
      out.write("\"><button>Ship</button></a></td>\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                            ");
}
                                            
      out.write("\n");
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("\n");
      out.write("                                    <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    </script>\n");
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
      out.write("            </div>\n");
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
      out.write("        <!-- Custom Theme JavaScript -->\n");
      out.write("        <script src=\"dist/js/sb-admin-2.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
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
