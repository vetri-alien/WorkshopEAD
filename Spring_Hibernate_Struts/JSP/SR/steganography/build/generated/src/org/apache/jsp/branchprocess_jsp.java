package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import database.*;

public final class branchprocess_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        Connection con;
        PreparedStatement ps;
        connect ct;
        String brname,add1,add2,city,pincode,phone;
    
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
      out.write("<html>\n");
      out.write("    <body bgcolor=\"red\">\n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("    ");

    try
            {
        out.println("hai");
    brname=request.getParameter("t1");
    add1=request.getParameter("t2");
    add2=request.getParameter("t3");
    city=request.getParameter("d1");
    pincode=request.getParameter("t4");
    phone=request.getParameter("t5");
    ct=new connect();
    con=ct.getDriver();
    out.println("Connected");
    ps=con.prepareStatement("insert into CrimeBranch_detailsa1 values(?,?,?,?,?,?)");
    ps.setString(1,brname);
    ps.setString(2,add1);
    ps.setString(3,add2);
    ps.setString(4,city);
    ps.setString(5,pincode);
    ps.setString(6,phone);
    ps.execute();
    response.sendRedirect("Branch_details.jsp?result=inserted Successfully");
    }
    catch(Exception e1)
            {
            response.sendRedirect("Branch_details.jsp?result=failed"+e1.toString());
            out.println(e1);
        }

    
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("      \n");
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
