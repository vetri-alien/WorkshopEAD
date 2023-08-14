package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contactus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body>\n");
      out.write("        <pre><center>\n");
      out.write("       Contat Numbers:\n");
      out.write(" Civil Supplies CID\n");
      out.write("EVR Periyar Building\n");
      out.write("First Floor B Wing 474,\n");
      out.write("Anna Salai, Nandanam,\n");
      out.write("Chennai 600035\n");
      out.write("\n");
      out.write("Designation/Section Name Direct Resi.\n");
      out.write("ADGP  Thiru S.K Dogra  24338878\n");
      out.write("IGP   24337383\n");
      out.write("Control Room  24338974\n");
      out.write("FAX   24338972\n");
      out.write("\n");
      out.write(" Crime ranch CID\n");
      out.write("Admiralty House,\n");
      out.write("Government Estate,\n");
      out.write("Chennai 600002\n");
      out.write("(PBX No 25393359)\n");
      out.write("\n");
      out.write("Email/Website   http://www.tn.gov.in/police\n");
      out.write("\n");
      out.write("Designation / Section  Name  Direct  PABX  Resi.\n");
      out.write("\n");
      out.write("ADGP (Crime)  Tmt.Archana Ramasundaram IPS  25389777\n");
      out.write("IG  (Crime)  Thiru K Thukkaiandi IPS  25380066\n");
      out.write("IG/Dir (SCRB)   25361260\n");
      out.write("DIG (Intelligence)   25380919\n");
      out.write("Control Room   25389779\n");
      out.write("FAX   25393359\n");
      out.write("        </center>\n");
      out.write("        </pre>\n");
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
