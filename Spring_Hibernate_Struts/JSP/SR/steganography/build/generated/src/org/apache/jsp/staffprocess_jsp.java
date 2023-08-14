package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import database.*;

public final class staffprocess_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    Connection con;
    PreparedStatement ps;
    connect ct;
    String brname,staffname,design,address,phone,emailid;
    int staffid;
    ResultSet rs;
     
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
      out.write("<html>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("     ");

     try
    {

      brname=request.getParameter("d1");
      staffname=request.getParameter("t1");
      design=request.getParameter("t2");
      address=request.getParameter("m1");
      phone=request.getParameter("t3");
      emailid=request.getParameter("t4");
      ct=new connect();
      con=ct.getDriver();
      out.println("Connected");


      ps=con.prepareStatement("select nvl(max(staffid),0)+1 from staffa");
      rs=ps.executeQuery();
      if(rs.next())
          staffid=rs.getInt(1);
      ps=con.prepareStatement("insert into staffa values(?,?,?,?,?,?,?)");
      ps.setString(1,brname);
      ps.setInt(2,staffid);
      ps.setString(3, staffname);
      ps.setString(4, design);
      ps.setString(5, address);
      ps.setString(6, phone);
      ps.setString(7, emailid);
      ps.execute();
      ps.close();
      rs.close();
      response.sendRedirect("Staffdetails.jsp?result=Inserted Successfully");
      }
     catch(Exception e)
     {
         response.sendRedirect("Staffdetails.jsp?result=Failed"+e.toString());
     }
     
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("       \n");
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
