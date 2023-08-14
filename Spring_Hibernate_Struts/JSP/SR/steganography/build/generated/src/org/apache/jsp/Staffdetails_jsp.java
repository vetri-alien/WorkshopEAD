package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import database.*;

public final class Staffdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection con;
            PreparedStatement ps;
            connect ct;
            ResultSet rs;
           
        

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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Staff Details</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body background=\"bg_1.jpg\">\n");
      out.write("        <font color=\"yellow\">\n");
      out.write("        <script>\n");
      out.write("            function test()\n");
      out.write("            {\n");
      out.write("                f1.action=\"staffprocess.jsp\";\n");
      out.write("                f1.submit();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <form name=\"f1\"><center>\n");
      out.write("            <br><br><br><br><br><br>\n");
      out.write("        <h1>Staff  Details</h1>\n");
      out.write("        <table style=\"color:yellow\" border=\"1\" cellspacing=\"10\" cellpadding=\"5\">\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Branch Name</td>\n");
      out.write("                    <td><select name=\"d1\">\n");
      out.write("                            <option>Select Branch</option>\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

           try
           {
               out.println("hai");
               ct=new connect();
               con=ct.getDriver();
               ps=con.prepareStatement("select brname from CrimeBranch_detailsa1");
      rs=ps.executeQuery();
    
     
      while(rs.next())
          {

          
      out.write("\n");
      out.write("           \n");
      out.write(" \n");
      out.write("          <option>");
      out.print(rs.getString(1));
      out.write("\n");
      out.write("          ");

                  
               }
      }
           catch(Exception e)
                   {
                   out.println(e);
           }
        
      out.write("\n");
      out.write("       \n");
      out.write("                            </select></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Staff  Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t1\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Designation</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t2\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td><textarea name=\"m1\" rows=\"4\" cols=\"20\">\n");
      out.write("                    </textarea></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Phone</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t3\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>E-mail ID</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t4\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("\n");
      out.write("                    <font color=\"blue\"></font>\n");
      out.write("                    <td><input type=\"button\" onclick=\"test()\" value=\"Submit\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("       \n");
      out.write("        </form>\n");
      out.write("        </font>\n");
      out.write("        <a href=\"index.html\">Home</a>\n");
      out.write("                 </body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

        result=request.getParameter("result");
        if(result==null)
            return;
        
        
      out.write("\n");
      out.write("        <font color=\"blue\"></font>\n");
      out.write("   ");
      out.print(result);
      out.write("\n");
      out.write("\n");
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
