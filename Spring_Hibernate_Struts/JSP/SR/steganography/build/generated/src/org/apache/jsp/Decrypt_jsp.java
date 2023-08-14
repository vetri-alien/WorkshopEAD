package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.text.*;
import java.sql.*;
import database.*;

public final class Decrypt_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    String user,branch,imglen;
    Connection con;
    connect ct;
    PreparedStatement ps,ps1;
    ResultSet rs,rs1;
    byte b[];
    InputStream fin;
    String img;
     int c,len;
        String s;
    
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Decrypt</title>\n");
      out.write("    </head>\n");
      out.write("       \n");
      out.write("    <body bgcolor=\"blue\">\n");
      out.write("        <form>\n");
      out.write("            <center>\n");
      out.write("                <table border=\"1\" cellspacing=\"10\" cellpadding=\"5\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>From</th>\n");
      out.write("                            <th>StaffName</th>\n");
      out.write("                            <th>Message</th>\n");
      out.write("                            <th>Date</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                     ");
      out.write("\n");
      out.write("    ");

    user=session.getAttribute("user").toString();
    ct=new connect();
    con=ct.getDriver();
    ps=con.prepareStatement("select b.mno,b.fraddr,a.staffname,b.msg,b.maildate from staffa a, mailboxa1 b where a.staffid=b.staffid and b.toaddr=?");
    ps.setString(1,user);
    rs=ps.executeQuery();
    while(rs.next())
        {
    
      out.write("\n");
      out.write("    <tr>\n");
      out.write("        <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("      \n");
      out.write("       ");


        byte b[] = rs.getBytes(4);
 for(int i=0;i<b.length;i++)
     out.println(b[i]);
 // response.setContentType("image/gif");
  //response.setContentLength(barray.length);
  response.getOutputStream().write(b);
 
  response.getOutputStream().flush();
  response.getOutputStream().close();



       
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(5));
      out.write("</t\n");
      out.write("    </tr>\n");
      out.write("    ");

    }
    
      out.write("\n");
      out.write("                    </table>\n");
      out.write("              </center>\n");
      out.write("        </form>\n");
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
