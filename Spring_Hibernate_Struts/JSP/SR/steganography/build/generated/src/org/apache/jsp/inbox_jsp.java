package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class inbox_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        String user;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"bg_1.jpg\">\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

        user=session.getAttribute("user").toString();
        out.println(user);
        
      out.write("\n");
      out.write("        <b>\n");
      out.write("        <form name=\"f1\">\n");
      out.write("            <img src=\"tamil nadu police academy.jpg\" align=\"left\"><br>\n");
      out.write("           \n");
      out.write("\n");
      out.write("            <table style=\"color:white\" border=\"1\" width=\"450\" align=\"center\" cellpadding=\"5\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th colspan=\"3\">EMERGENCY NUMBERS</th>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        \n");
      out.write("                        <td>To Report A Crime - Control Room\n");
      out.write("</td>\n");
      out.write("                        <td>100\n");
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <td>To Report Traffic Violation\n");
      out.write("</td>\n");
      out.write("                        <td>103\n");
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        \n");
      out.write("                        <td>Ambulance\n");
      out.write("</td>\n");
      out.write("                        <td>108\n");
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <td>Child Line\n");
      out.write("</td>\n");
      out.write("                        <td>1098\n");
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <td>Women help Line\n");
      out.write("</td>\n");
      out.write("                        <td>1091\n");
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <td>Coastal security help Line </td>\n");
      out.write("                        <td>1093\n");
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <td>Senior Citizen Line\n");
      out.write("</td>\n");
      out.write("                        <td>1253\n");
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <td>Blue Line\n");
      out.write("</td>\n");
      out.write("                        <td>12700\n");
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <td>Confidential Complaints\n");
      out.write("</td>\n");
      out.write("                        <td>044 - 42103535   </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"3\">*These Emergency Numbers Are Applicable To All Commissionerates in Tamil Nadu i.e., CHENNAI, TRICHY, COIMBATORE, MADURAI , TIRUNELVELI And SALEM .\n");
      out.write("</td>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write(" <table border=\"1\" cellpadding=\"15\" align=\"left\">\n");
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"encrypt.jsp\">Send Message</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"Decrypt.jsp\">Receive Message</a></td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        </b>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
