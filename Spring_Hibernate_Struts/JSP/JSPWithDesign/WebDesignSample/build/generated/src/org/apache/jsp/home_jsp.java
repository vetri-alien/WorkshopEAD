package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Web Design</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write(".b:hover{\n");
      out.write("border-size:3px;\n");
      out.write("border-color:red;\n");
      out.write("}\n");
      out.write(".big:hover\n");
      out.write("{\n");
      out.write("color:red;\n");
      out.write("\n");
      out.write("font-weight:bold;\n");
      out.write("}\n");
      out.write(".b1\n");
      out.write("{\n");
      out.write("background-color: #ffffff;\n");
      out.write("border-bottom:solid;\n");
      out.write("border-left: #FFEEEE;\n");
      out.write("border-right:solid;\n");
      out.write("border-top: #EEEEEE;\n");
      out.write("color: brown;\n");
      out.write("font-family: Verdana, Arial\n");
      out.write("\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"default.css\" />\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"upbg\"></div>\n");
      out.write("\n");
      out.write("<div id=\"outer\"> \n");
      out.write("  <div id=\"header\"> \n");
      out.write("    <div id=\"headercontent\"> \n");
      out.write("      <h1>JSP Examples</h1>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div id=\"headerpic\"> </div>\n");
      out.write("  <div id=\"menu\"> \n");
      out.write("    <!-- HINT: Set the class of any menu link below to \"active\" to make it appear active -->\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"#\" class=\"active\">Home</a></li>\n");
      out.write("      <li><a href=\"user_log.jsp\" >User</a></li>\n");
      out.write("      <li><a href=\"signup.jsp\">Sign up</a></li>      \n");
      out.write("      <li><a href=\"server_log.jsp\">Admin</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("  <div id=\"menubottom\"></div>\n");
      out.write("  <div id=\"content\"> \n");
      out.write("    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->\n");
      out.write("    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->\n");
      out.write("    <div id=\"primarycontainer\"> \n");
      out.write("      <div id=\"primarycontent\"> \n");
      out.write("        <!-- Primary content area start -->\n");
      out.write("        <div class=\"post\"> \n");
      out.write("          <p> <strong><em><font color=\"#990000\" size=\"+1\" face=\"Verdana, Arial, Helvetica, sans-serif\">J2EE</font></em></strong> \n");
      out.write("            <br/>\n");
      out.write("            <br/>\n");
      out.write("            <img src=\"images/rose4.jpg\" width=\"200\" height=\"200\"></p>\n");
      out.write("        </div>\n");
      out.write("        <!-- Primary content area end -->\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- Secondary content: Stuff that goes in the secondary content column (by default, the narrower right column) -->\n");
      out.write("    <div id=\"secondarycontent\"> \n");
      out.write("      <!-- Secondary content area start -->\n");
      out.write("      <!-- HINT: Set any div's class to \"box\" to encapsulate it in (you guessed it) a box -->\n");
      out.write("      <!-- Secondary content area end -->\n");
      out.write("      \n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div id=\"footer\" align=\"center\"> <strong><font color=\"#990033\" face=\"Geneva, Arial, Helvetica, sans-serif\" > &copy;  copy rights reserved by SR &AMP; Family  2012</font></strong></div>\n");
      out.write("  <!--  <div class=\"right\">Design by <a href=\"http://www.nodethirtythree.com/\">NodeThirtyThree \n");
      out.write("      Design</a></div>-->\n");
      out.write("</div>\n");
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
