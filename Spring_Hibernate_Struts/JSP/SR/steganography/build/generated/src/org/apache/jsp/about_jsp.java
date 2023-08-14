package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body background=\"6.bmp\" text=\"WHITE\">\n");
      out.write("       \n");
      out.write("         <MARquee bgcolor=\"Blue\"> <h1 align=\"center\">GRIAN TECHNOLOGY PRIVATE LTD.,</h1></MARquee>\n");
      out.write("<font face=\"monotype corsiva\" size=\"5\" color=\"YELLOW\">\n");
      out.write("\n");
      out.write("                   <p align=\"justify\"> Founded in1998, Grian Technologies Pvt.Ltd(Grail tek)is a consulting and software    development firm dedicated to business success through long-term relationship with our clients   and staff. Based in chennai, Grian tek has grown from a one-person startup to a significant corporation of 500 talented professionals having more than 10 branches all over the world.</dd>\n");
      out.write("\n");
      out.write("                   <p align=\"justify\">Grian tek is dynamic, service oriented enterprise, and is positioned to successfully respond to trends and changes in the information technology in the industry. Grian tek’s client relationships are based on the highest quality professional technology consulting and development services. Grian tex enjoys and excellent reputation as a proven resource for strategic planning, needs, assessment, client/server programming and interactive multimedia, internet/intranet development , networking and security services. With customer in private business and the public sector, takes pride in a history of projects that signifiacantly    enhace and /or improve client’s business pracitises and level of service.</dd>\n");
      out.write("\n");
      out.write("              <p align=\"justify\">Grian tek focus on long term relationship with staff is reflected through clear communication of expectation, performance based recognition and advancement, and an environment that supports employee’s professional development.  Grian tek’s staff, comprised almost entirely of full time company employees, is held to standards of accountability, integrity, creativity and competence. The dedication, skills, and integrity of Grian tek’s staff are key to the firm’s success.</dd>\n");
      out.write("        \n");
      out.write("           </body>\n");
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
