package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pojo.CartHasProduct;
import org.hibernate.criterion.Restrictions;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Criteria;
import java.util.List;
import pojo.UserReg;

public final class MyprofileUser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>CamZone.lk</title>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <!-- jQuery (necessary JavaScript plugins) -->\n");
      out.write("        <script type='text/javascript' src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <!-- Custom Theme files -->\n");
      out.write("        <link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <!-- Custom Theme files -->\n");
      out.write("\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>\n");
      out.write("        <!-- start menu -->\n");
      out.write("        <link href=\"css/megamenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/megamenu.js\"></script>\n");
      out.write("        <script>$(document).ready(function() {\n");
      out.write("                $(\".megamenu\").megamenu();\n");
      out.write("            });</script>\n");
      out.write("        <script src=\"js/menu_jquery.js\"></script>\n");
      out.write("        <script src=\"js/simpleCart.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- header_top -->\n");
      out.write("        <div class=\"top_bg\">\n");
      out.write("            ");
      out.write("\n");
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
      out.write("        <div class=\"container\">\n");
      out.write("                <div class=\"header_top\">\n");
      out.write("                    <div class=\"top_right\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"Help.jsp\">help</a></li>|\n");
      out.write("                            <li><a href=\"contact.jsp\">Contact</a></li>|\n");
      out.write("                            <!--<li><a href=\"Deliveryinfo.jsp\">Delivery information</a></li>-->\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"top_left\">");

                    if(session.getAttribute("login")!=null){
                    UserReg o = (UserReg)session.getAttribute("login");
                    
                    
      out.write("\n");
      out.write("                    <h2>");
      out.print(o.getFName()+o.getLName());
      out.write(" | <a href=\"logout\" class=\"btn-sm  btn-default\" >Logout</a> </h2>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- header -->\n");
      out.write("\n");
      out.write("        <div id=\"page-wrapper\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <h1 class=\"page-header\">My Account</h1>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"panel panel-default\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <h1>Profile</h1>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- /.panel-heading -->\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                                <!-- Nav tabs -->\n");
      out.write("\n");
      out.write("                                <!-- Tab panes -->\n");
      out.write("                                <div class=\"tab-content\">\n");
      out.write("                                    <div class=\"tab-pane fade in active\" id=\"home-pills\">\n");
      out.write("\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-lg-6\">\n");
      out.write("                                                <div class=\"panel panel-default\">\n");
      out.write("                                                    <div class=\"panel-heading\">\n");
      out.write("                                                        My Account Profile\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <!-- /.panel-heading -->\n");
      out.write("                                                    <div class=\"panel-body\">\n");
      out.write("                                                        <div class=\"dataTable_wrapper\">\n");
      out.write("                                                            <table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\">\n");
      out.write("\n");
      out.write("                                                                <tbody>\n");
      out.write("\n");
      out.write("                                                                    ");

                                                                        UserReg p;
                                                                        p = (UserReg) request.getSession().getAttribute("login");
                                                                        try {

                                                                            SessionFactory sf = Connection.DB.getSessionFactory();
                                                                            Session s = sf.openSession();

                                                                            Criteria c = s.createCriteria(pojo.UserReg.class);
                                                                            p = (UserReg) request.getSession().getAttribute("login");
                                                                            c.add(Restrictions.eq("idUserReg", p.getIdUserReg()));
                                                                            List<pojo.UserReg> li = c.list();

                                                                            for (pojo.UserReg userReg : li) {

                                                                    
      out.write("\n");
      out.write("\n");
      out.write("                                                                    <tr>\n");
      out.write("                                                                        <td>First Name</td>\n");
      out.write("                                                                        <td contenteditable=\"true\">");
      out.print(userReg.getFName());
      out.write("</td>\n");
      out.write("                                                                    </tr>\n");
      out.write("\n");
      out.write("                                                                    <tr>\n");
      out.write("                                                                        <td>Last Name</td>\n");
      out.write("                                                                        <td contenteditable=\"true\">");
      out.print(userReg.getLName());
      out.write("</td>\n");
      out.write("                                                                    </tr>\n");
      out.write("                                                                    <tr>\n");
      out.write("                                                                        <td>Email Address</td>\n");
      out.write("                                                                        <td contenteditable=\"true\">");
      out.print(userReg.getEmail());
      out.write("</td>\n");
      out.write("                                                                    </tr>\n");
      out.write("                                                                    <tr>\n");
      out.write("                                                                        <td>Address Line 1</td>\n");
      out.write("                                                                        <td contenteditable=\"true\">");
      out.print(userReg.getAddress1());
      out.write("</td>\n");
      out.write("                                                                    </tr>\n");
      out.write("\n");
      out.write("                                                                    <tr>\n");
      out.write("                                                                        <td>Address Line 2</td>\n");
      out.write("                                                                        <td contenteditable=\"true\">");
      out.print(userReg.getAddress2());
      out.write("</td>\n");
      out.write("                                                                    </tr>\n");
      out.write("                                                                    <tr>\n");
      out.write("                                                                        <td>Address Line 3</td>\n");
      out.write("                                                                        <td contenteditable=\"true\">");
      out.print(userReg.getAddress3());
      out.write("</td>\n");
      out.write("                                                                    </tr>\n");
      out.write("                                                                    <tr>\n");
      out.write("                                                                        <td>User name</td>\n");
      out.write("                                                                        <td contenteditable=\"true\">");
      out.print(userReg.getUname());
      out.write("</td>\n");
      out.write("                                                                    </tr>\n");
      out.write("                                                                    <tr>\n");
      out.write("                                                                        <td>Gender</td>\n");
      out.write("                                                                        <td ><div contenteditable=\"true\">");
      out.print(userReg.getGender());
      out.write("</div></td>\n");
      out.write("\n");
      out.write("                                                                    </tr>\n");
      out.write("\n");
      out.write("                                                                    ");

                                                                            }

                                                                            s.close();
                                                                        } catch (Exception e) {
                                                                        }

                                                                    
      out.write("\n");
      out.write("\n");
      out.write("                                                                </tbody>\n");
      out.write("                                                            </table>\n");
      out.write("\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <!-- /.table-responsive -->\n");
      out.write("                                                        <div class=\"col-lg-3\">         \n");
      out.write("                                                            <input type=\"button\" class=\"btn btn-lg btn-success btn-block\" value=\"update profile\" id=\"upid\"/>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                    <!-- /.panel-body -->\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                <!-- /.panel -->\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-lg-6\">\n");
      out.write("                                                <div class=\"dataTable_wrapper\">\n");
      out.write("                                                    <table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example  \" >\n");
      out.write("                                                        <thead>\n");
      out.write("                                                            <tr>\n");
      out.write("                                                                <th>Product ID</th>\n");
      out.write("                                                                <th>Product Name</th>\n");
      out.write("                                                                <th>Qty</th>\n");
      out.write("                                                                <th>Added Date</th>\n");
      out.write("                                                                <th>shiped Date</th>\n");
      out.write("                                                                <th>Action</th>\n");
      out.write("\n");
      out.write("                                                            </tr>\n");
      out.write("                                                        </thead>\n");
      out.write("                                                        <tbody id=\"adminTB\">\n");
      out.write("\n");
      out.write("                                                            ");

                                                                SessionFactory sf = Connection.DB.getSessionFactory();
                                                                Session s = sf.openSession();
                                                                Criteria h2 = s.createCriteria(CartHasProduct.class);
                                                                h2.add(Restrictions.eq("status", 1));
                                                                List<CartHasProduct> l2 = h2.list();
                                                                for (int y = 0; y < l2.size(); y++) {
                                                                    CartHasProduct o = l2.get(y);
                                                                    if (o.getCart().getUserReg().getIdUserReg().intValue() == p.getIdUserReg().intValue()) {

                                                            
      out.write("\n");
      out.write("\n");
      out.write("                                                            <tr onclick=\"loadShippingDetails(");
      out.print( o.getId());
      out.write(");\">\n");
      out.write("                                                                <td>");
      out.print(o.getProduct().getIdProduct());
      out.write("</td>\n");
      out.write("                                                                <td>");
      out.print(o.getProduct().getName());
      out.write("</td>\n");
      out.write("                                                                <td>");
      out.print(o.getQty());
      out.write(" </td>\n");
      out.write("                                                                <td>");
      out.print(o.getDateAdd());
      out.write("</td>\n");
      out.write("                                                                <td>");
      out.print(o.getDateShipped());
      out.write("</td>\n");
      out.write("                                                                <td><a href=\"?id7=");
      out.print(o.getId());
      out.write("\"><button>deliver</button></a></td>\n");
      out.write("                                                            </tr>\n");
      out.write("\n");
      out.write("                                                            ");
}
                                                                }
                                                            
      out.write("\n");
      out.write("\n");
      out.write("                                                        </tbody>\n");
      out.write("                                                    </table>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            <!-- /.col-lg-12 -->\n");
      out.write("                                        </div>\n");
      out.write("                                        <!-- /.row -->\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /.panel-body -->\n");
      out.write("                            </div>\n");
      out.write("                            <!-- /.panel -->\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /.col-lg-12 -->\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.row -->\n");
      out.write("                </div>\n");
      out.write("                <!-- /.container-fluid -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /#page-wrapper -->\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"foot-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"col-md-6 s-c\">\n");
      out.write("                    <li>\n");
      out.write("                        <div class=\"fooll\">\n");
      out.write("                            <h5>follow us on</h5>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <div class=\"social-ic\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\"><i class=\"facebok\"> </i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"twiter\"> </i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"goog\"> </i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"be\"> </i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"pp\"> </i></a></li>\n");
      out.write("                                <div class=\"clearfix\"></div>\t\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 s-c\">\n");
      out.write("                    <div class=\"stay\">\n");
      out.write("                        <div class=\"stay-left\">\n");
      out.write("                            <form>\n");
      out.write("                                <input type=\"text\" placeholder=\"Enter your email to join our newsletter\" required=\"\">\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"btn-1\">\n");
      out.write("                            <form>\n");
      out.write("                                <input type=\"submit\" value=\"join\">\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix\"> </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clearfix\"> </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("<!--                <div class=\"col-md-3 cust\">\n");
      out.write("                    <h4>CUSTOMER CARE</h4>\n");
      out.write("                    <li><a href=\"#\">Help Center</a></li>\n");
      out.write("                    <li><a href=\"#\">FAQ</a></li>\n");
      out.write("                    <li><a href=\"#\">How To Buy</a></li>\n");
      out.write("                    <li><a href=\"#\">Delivery</a></li>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-2 abt\">\n");
      out.write("                    <h4>ABOUT US</h4>\n");
      out.write("                    <li><a href=\"#\">Our Stories</a></li>\n");
      out.write("                    <li><a href=\"#\">Press</a></li>\n");
      out.write("                    <li><a href=\"#\">Career</a></li>\n");
      out.write("                    <li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-2 myac\">\n");
      out.write("                    <h4>MY ACCOUNT</h4>\n");
      out.write("                    <li><a href=\"register.html\">Register</a></li>\n");
      out.write("                    <li><a href=\"#\">My Cart</a></li>\n");
      out.write("                    <li><a href=\"#\">Order History</a></li>\n");
      out.write("                    <li><a href=\"#\">Payment</a></li>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-5 our-st\">\n");
      out.write("                    <div class=\"our-left\">\n");
      out.write("                        <h4>OUR STORES</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"our-left1\">\n");
      out.write("                        <div class=\"cr_btn\">\n");
      out.write("                            <a href=\"#\">SOLO</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"our-left1\">\n");
      out.write("                        <div class=\"cr_btn1\">\n");
      out.write("                            <a href=\"#\">BOGOR</a>\n");
      out.write("                        </div>-->\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("                    <li><i class=\"add\"> </i>Camera Hub,No 2/176.gall road Matara</li>\n");
      out.write("                    <li><i class=\"phone\"> </i>041-5684096</li>\n");
      out.write("                    <li><a href=\"mail:info@cameraHub.com\"><i class=\"mail\"> </i>info@cameraHub.com </a></li>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clearfix\"> </div>\n");
      out.write("                <p>Copyrights © 2015 CameraHub. All rights reserved</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
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
