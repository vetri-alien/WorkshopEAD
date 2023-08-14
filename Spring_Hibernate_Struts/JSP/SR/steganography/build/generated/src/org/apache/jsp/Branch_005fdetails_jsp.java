package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Branch_005fdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

    String result;


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
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Crime Branch</title>\n");
      out.write("    <link href=\"Style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<script>\n");
      out.write("    function store()\n");
      out.write("    {\n");
      out.write("        if(f1.t1.value==\"\"||f1.t2.value==\"\"||f1.t3.value==\"\"||f1.t4.value==\"\"||f1.t5.value==\"\")\n");
      out.write("            alert(\"Missing Some Input\");\n");
      out.write("        else\n");
      out.write("        {\n");
      out.write("            f1.action=\"branchprocess.jsp\";\n");
      out.write("            f1.submit();\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<body bgcolor=\"maroon\" background=\"bg_1.jpg\">\n");
      out.write("<center>\n");
      out.write("    \n");
      out.write("</center>\n");
      out.write("<br><br><br><br><br><br><br>\n");
      out.write("<form name=\"f1\" ><center>\n");
      out.write("        <font color=\"white\">\n");
      out.write("        <h2 style=\"color:yellow\">Crime Branch</h2>\n");
      out.write("        <table style=\"color:white\" border=\"1\" cellspacing=\"10\" cellpadding=\"5\">\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Branch Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t1\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t2\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td><input type=\"text\" name=\"t3\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>City</td>\n");
      out.write("                    <td><select name=\"d1\">\n");
      out.write("                            <option>Trichy</option>\n");
      out.write("                            <option>Madurai</option>\n");
      out.write("                            <option>Chennai</option>\n");
      out.write("                            <option>Coimbatore</option>\n");
      out.write("                            <option>Theni</option>\n");
      out.write("                    </select></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Pincode</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t4\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Phone</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t5\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td><input type=\"button\" value=\"Submit\" onclick=\"store()\" />\n");
      out.write("                </tr>\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("    <right> <a href=\"index.html\">Back</a></right>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("    ");

        result = request.getParameter("result");

        if (result == null) {
            return;
        }


    
      out.write("\n");
      out.write("    ");
      out.print(result);
      out.write("\n");
      out.write("    </font>\n");
      out.write("   \n");
      out.write("    <a href=\"adminlink.jsp\">Back</a>\n");
      out.write("</center>\n");
      out.write("</body>\n");
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
