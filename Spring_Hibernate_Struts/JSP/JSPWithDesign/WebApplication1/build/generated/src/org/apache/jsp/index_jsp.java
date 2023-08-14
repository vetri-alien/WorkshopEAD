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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>Green Planet</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"js/jquery-1.3.2.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/cufon-yui.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/cufon-replace.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/cufon-replace.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/Bauhaus_Md_BT_400.font.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<!--[if lt IE 7]><link href=\"style_ie.css\" rel=\"stylesheet\" type=\"text/css\" /><![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body id=\"page1\">\r\n");
      out.write("<div id=\"main\">\r\n");
      out.write("  <!-- header -->\r\n");
      out.write("  <div id=\"header\">\r\n");
      out.write("    <ul class=\"site-nav\">\r\n");
      out.write("      <li><a href=\"index.html\" class=\"act\">Home</a></li>\r\n");
      out.write("      <li><a href=\"about-us.html\">About Us</a></li>\r\n");
      out.write("      <li><a href=\"articles.html\">Articles</a></li>\r\n");
      out.write("      <li><a href=\"contact-us.html\">Contact Us</a></li>\r\n");
      out.write("      <li><a href=\"sitemap.html\">Site Map</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    <div class=\"logo\"><a href=\"#\"><img src=\"images/logo.gif\" alt=\"\" /></a></div>\r\n");
      out.write("  </div>\r\n");
      out.write(" \r\n");
      out.write("  <!-- footer -->\r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("<script type=\"text/javascript\"> Cufon.now(); </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- content -->\r\n");
      out.write("        <div id=\"content\">\r\n");
      out.write("            <div class=\"indent1\">\r\n");
      out.write("                <div class=\"indent\">\r\n");
      out.write("            <h2>Registration Form</h2>\r\n");
      out.write("            <form action=\"process.jsp\" method=\"post\">\r\n");
      out.write("            <table cellspacing=\"4\" cellpadding=\"4\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>UserName</td>\r\n");
      out.write("                    <td><input type=\"text\" name=\"t1\" value=\"\" /></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Password</td>\r\n");
      out.write("                    <td><input type=\"password\" name=\"t2\" value=\"\" /></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Gender</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <input type=\"radio\" name=\"r1\" value=\"Male\" />Male\r\n");
      out.write("                        <input type=\"radio\" name=\"r1\" value=\"Female\" />Female\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>DOB</td>\r\n");
      out.write("                    <td><input type=\"text\" name=\"t3\" value=\"\" /></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Entertainment</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <input type=\"checkbox\" name=\"c1\" value=\"Sports\" />Sports\r\n");
      out.write("                        <input type=\"checkbox\" name=\"c1\" value=\"Music\" />Music\r\n");
      out.write("                        <input type=\"checkbox\" name=\"c1\" value=\"News\" />News\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Mail Id</td>\r\n");
      out.write("                    <td><input type=\"text\" name=\"t4\" value=\"\" /></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Age</td>\r\n");
      out.write("                    <td><input type=\"text\" name=\"t5\" value=\"\" /></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Photo</td>\r\n");
      out.write("                    <td><input type=\"file\" name=\"file1\" value=\"\" /></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td><input type=\"submit\" value=\"Register\" name=\"s1\" /></td>\r\n");
      out.write("                    <td><input type=\"reset\" value=\"Clear\" name=\"s2\" /></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("            </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- footer -->\r\n");
      out.write("        <div id=\"footer\">\r\n");
      out.write("            <div class=\"indent\">\r\n");
      out.write("            <div class=\"fleft\">Copyright - &reg; SR InfoTech &copy; 2013</div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
