package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class uploadinput_jsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<HTml>\n");
      out.write("<HEAD><TITLE>Display file upload form to the user</TITLE></HEAD>\n");
 //  for uploading the file we used Encrypt type of multipart/form-data and input of file type to browse and submit the file 
      out.write("\n");
      out.write("  <BODY> <FORM  ENCTYPE=\"multipart/form-data\" ACTION=\"upload.jsp\" METHOD=POST>\n");
      out.write("\t\t<br><br><br>\n");
      out.write("\t  <center>\n");
      out.write("          <table border=\"2\" >\n");
      out.write("              <tr>\n");
      out.write("                  <td colspan=\"2\"><p align=\"center\"><B>PROGRAM FOR UPLOADING THE FILE</B></td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td><b>Choose the file To Upload:</b></td>\n");
      out.write("                  <td><INPUT NAME=\"F1\" TYPE=\"file\"></td>\n");
      out.write("              </tr>\n");
      out.write("\t\t      <tr>\n");
      out.write("                  <td colspan=\"2\"><p align=\"right\"><INPUT TYPE=\"submit\" VALUE=\"Send File\" ></p>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("          </table>\n");
      out.write("     </center>\n");
      out.write("     </FORM>\n");
      out.write("</BODY>\n");
      out.write("</HTML>");
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
