package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pojo.UserReg;
import controller.user;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import pojo.CartHasProduct;
import org.hibernate.Transaction;
import org.hibernate.Session;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        ");

            if (request.getParameter("email") != null) {
                Session ses1 = Connection.DB.getSessionFactory().openSession();
                Transaction beginTransaction = ses1.beginTransaction();
                Criteria createCriteria = ses1.createCriteria(pojo.UserReg.class);
                createCriteria.add(Restrictions.eq("email", request.getParameter("email").toString()));
                UserReg o = (UserReg)createCriteria.uniqueResult();
                mail.sendMail.sendMail(o.getPassword1(), o.getEmail());
            }

        
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>Admin</title>\n");
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
      out.write("\n");
      out.write("        < script>\n");
      out.write("\n");
      out.write("        var btn;\n");
      out.write("\n");
      out.write("        function loginTest() {\n");
      out.write("\n");
      out.write("        var uname = document.getElementById(\"un\").value;\n");
      out.write("        var passwd = document.getElementById(\"pw\").value;\n");
      out.write("\n");
      out.write("        if(uname==null || uname==\"\" || passwd==null || passwd==\"\"){\n");
      out.write("\n");
      out.write("        document.getElementById(\"err\").innerHTML = \"User Name or Password Cannot be Empty..\";\n");
      out.write("\n");
      out.write("        }else{           \n");
      out.write("\n");
      out.write("        if (uname === \"abc\" && passwd === \"123\") {\n");
      out.write("\n");
      out.write("        document.getElementById(\"err\").innerHTML = \"Login SuccessFull...\";\n");
      out.write("\n");
      out.write("        } else {\n");
      out.write("\n");
      out.write("        document.getElementById(\"err\").innerHTML = \"Incorrect User Name or Password...\";\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function Create() {\n");
      out.write("\n");
      out.write("        var ele = document.createElement(\"input\");\n");
      out.write("        ele.type = \"text\";\n");
      out.write("        ele.id = \"uname\";\n");
      out.write("\n");
      out.write("        var ele2 = document.createElement(\"input\");\n");
      out.write("        ele2.type = \"password\";\n");
      out.write("        ele2.id = \"passwd\";\n");
      out.write("\n");
      out.write("        var btn = document.createElement(\"input\");\n");
      out.write("        btn.type = \"button\"\n");
      out.write("        btn.value = \"Login\";\n");
      out.write("        btn.onclick = loginTest;\n");
      out.write("\n");
      out.write("        var lbl = document.createElement(\"lablel\");\n");
      out.write("        lbl.id=\"err\";\n");
      out.write("        lbl.style.color = \"red\";\n");
      out.write("\n");
      out.write("        var div = document.getElementById(\"log\");\n");
      out.write("        div.appendChild(ele);\n");
      out.write("        div.appendChild(ele2);\n");
      out.write("        div.appendChild(btn);\n");
      out.write("        div.appendChild(lbl);\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4 col-md-offset-4\">\n");
      out.write("                <div class=\"login-panel panel panel-default\">\n");
      out.write("                    <div class=\"panel-heading\">\n");
      out.write("                        <h3 class=\"panel-title\">Please Sign In</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                        <form role=\"form\" method=\"post\" action=\"user\">\n");
      out.write("                            <fieldset>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input class=\"form-control\" placeholder=\"uname\" name=\"un\" type=\"user\" autofocus>\n");
      out.write("                                </div>\n");
      out.write("<!--                                <div class=\"form-group\">\n");
      out.write("                                    <input class=\"form-control\" placeholder=\"Password\" name=\"pw\" type=\"password\" value=\"\">\n");
      out.write("                                </div>-->\n");
      out.write("<!--                                <div class=\"checkbox\">\n");
      out.write("                                    <label>\n");
      out.write("                                        <input name=\"remember\" type=\"checkbox\" value=\"Remember Me\">Remember Me\n");
      out.write("                                    </label>\n");
      out.write("                                </div>-->\n");
      out.write("                                <!-- Change this to a button or input when using this as a form -->\n");
      out.write("                                <input type=\"submit\" class=\"btn btn-lg btn-success btn-block\" value=\"Send\"><br>\n");
      out.write("\n");
      out.write("<!--                                <a href=\"#\">I forgot my password</a><br><br>\n");
      out.write("                                <a href=\"register.jsp\" class=\"text-center\">Register a new membership</a>-->\n");
      out.write("\n");
      out.write("                            </fieldset>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- jQuery -->\n");
      out.write("    <script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\n");
      out.write("    <script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Metis Menu Plugin JavaScript -->\n");
      out.write("    <script src=\"bower_components/metisMenu/dist/metisMenu.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Custom Theme JavaScript -->\n");
      out.write("    <script src=\"dist/js/sb-admin-2.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
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
