package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/design.html");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>BusinessWebDesign</title>\r\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/arial.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/cuf_run.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"main\">\r\n");
      out.write("  <div class=\"header\">\r\n");
      out.write("    <div class=\"header_resize\">\r\n");
      out.write("      <div class=\"logo\">\r\n");
      out.write("        <h1><a href=\"#\"><span>B</span>usinessWebDesign</a> <small>Simple design templates</small></h1>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"clr\"></div>\r\n");
      out.write("      <div class=\"menu_nav\">        \r\n");
      out.write("        <ul>\r\n");
      out.write("          <li class=\"active\"><a href=\"index.html\">Home</a></li>\r\n");
      out.write("          <li><a href=\"support.html\">Support</a></li>\r\n");
      out.write("          <li><a href=\"about.html\">About Us</a></li>\r\n");
      out.write("          <li><a href=\"blog.html\">Blog</a></li>\r\n");
      out.write("          <li><a href=\"contact.html\">Contact Us</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <div class=\"clr\"></div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div> \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <div class=\"content_resize\"> <img src=\"images/hbg_img.jpg\" width=\"948\" height=\"295\" alt=\"\" class=\"hbg_img\" />\n");
      out.write("            <div class=\"clr\"></div>\n");
      out.write("\n");
      out.write("        <!-- Main Content -->\n");
      out.write("        <div class=\"mainbar\">\n");
      out.write("        <div class=\"article\">\n");
      out.write("            <h2>Registration Form</h2>\n");
      out.write("            <form action=\"process.jsp\" method=\"post\">\n");
      out.write("            <table cellspacing=\"4\" cellpadding=\"4\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>UserName</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t1\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"t2\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"radio\" name=\"r1\" value=\"Male\" />Male\n");
      out.write("                        <input type=\"radio\" name=\"r1\" value=\"Female\" />Female\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>DOB</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t3\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Entertainment</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"checkbox\" name=\"c1\" value=\"Sports\" />Sports\n");
      out.write("                        <input type=\"checkbox\" name=\"c1\" value=\"Music\" />Music\n");
      out.write("                        <input type=\"checkbox\" name=\"c1\" value=\"News\" />News\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Mail Id</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t4\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Age</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t5\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Photo</td>\n");
      out.write("                    <td><input type=\"file\" name=\"file1\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><input type=\"submit\" value=\"Register\" name=\"s1\" /></td>\n");
      out.write("                    <td><input type=\"reset\" value=\"Clear\" name=\"s2\" /></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      <!--Side Bar -->\n");
      out.write("      <div class=\"sidebar\">\n");
      out.write("        <div class=\"gadget\">\n");
      out.write("          <h2 class=\"star\"><span>Sidebar</span> Menu</h2>\n");
      out.write("          <div class=\"clr\"></div>\n");
      out.write("          <ul class=\"sb_menu\">\n");
      out.write("            <li><a href=\"#\">Home</a></li>\n");
      out.write("            <li><a href=\"#\">TemplateInfo</a></li>\n");
      out.write("            <li><a href=\"#\">Style Demo</a></li>\n");
      out.write("            <li><a href=\"#\">Blog</a></li>\n");
      out.write("            <li><a href=\"#\">Archives</a></li>\n");
      out.write("            <li><a href=\"#\">Web Templates</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("    <!--footer  -->\n");
      out.write("      <div class=\"footer\">\n");
      out.write("        <div class=\"footer_resize\">\n");
      out.write("            <p class=\"lf\">&copy; Copyright <a href=\"#\">MyWebSite</a>.</p>\n");
      out.write("            <p class=\"rf\">Layout by Rocket <a href=\"http://www.rocketwebsitetemplates.com/\">Website Templates</a></p>\n");
      out.write("            <div class=\"clr\"></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
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
