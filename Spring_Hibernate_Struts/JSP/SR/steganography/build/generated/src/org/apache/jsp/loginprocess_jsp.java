package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import database.*;

public final class loginprocess_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                            Connection con;
                            connect ct;
                            PreparedStatement ps;
                            ResultSet rs;
                            String uname,pass;
                            String br,user;
                            int sid;
                            
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("       ");
      out.write("\n");
      out.write("                            ");

                            try
                                    {
                            ct=new connect();
                            con=ct.getDriver();
                                                    
                       
                         br=request.getParameter("d1");
                         session.setAttribute("branch",br);
                           uname=request.getParameter("t1");
                           pass=request.getParameter("t2");
                           ps=con.prepareStatement("select * from userlista1 where uname=? and status='Y'");
                           ps.setString(1,uname);

                          rs=ps.executeQuery();
                        

                     if(!rs.next())
                         {
                        response.sendRedirect("Homepage.jsp?res=Invaid User" );
                             }
                          else
                              {
                         ps=con.prepareStatement("select uname,pass,staffid from UserLista1 where uname=? and pass=? and brname=?");
                         ps.setString(1,uname);
                         ps.setString(2,pass);
                         ps.setString(3,br);

                 rs=ps.executeQuery();
                            if(rs.next())
                                {
                               session.setAttribute("user",uname);
                               sid=rs.getInt(3);
                               rs.close();
                               ps=con.prepareStatement("select a.staffid,a.design from staffa a,userlista1 b where a.staffid=b.staffid and a.design in ('Inspector','SubInspector','Inspector General') and b.staffid=?");
                               ps.setInt(1,sid);
                               rs=ps.executeQuery();
                               if(rs.next())
                               {
                                      session.setAttribute("utype","Admin");
                                      response.sendRedirect("adminlink.jsp");
                                     }
                               else
                                   {
                                   session.setAttribute("utype", "User");
                                   response.sendRedirect("inbox.jsp");
                                   }
                               }
                               else
                                   response.sendRedirect("HomePage.jsp?res=Invalid Username /password");
                               }
                 }
                           
                            
                          
                            catch(Exception e1)
                                   {
                                out.println(e1);
                                }
                            
      out.write("\n");
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
