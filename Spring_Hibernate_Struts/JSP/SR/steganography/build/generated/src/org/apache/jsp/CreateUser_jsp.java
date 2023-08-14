package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import database.*;

public final class CreateUser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        Connection con;
        connect ct;
        PreparedStatement ps;
        ResultSet rs;
        String branch;
        

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
      out.write("        <title>New User</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <script>\n");
      out.write("        function fun()\n");
      out.write("        {\n");
      out.write("f1.action=\"textprocess.jsp\";\n");
      out.write("f1.submit();\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <body background=\"bg_1.jpg\">\n");
      out.write("        \n");
      out.write("        <form name=\"f1\" >\n");
      out.write("            <font color=\"white\">\n");
      out.write("            <center>\n");
      out.write("                <script>\n");
      out.write("                    function demo()\n");
      out.write("                    {\n");
      out.write("                        alert(\"clicked\");\n");
      out.write("                        f1.action=\"createprocess.jsp\";\n");
      out.write("                        f1.submit();\n");
      out.write("                    }\n");
      out.write("                                </script>\n");
      out.write("        <h1><u>New User</u></h1>\n");
      out.write("        <table style=\"color:navy\" border=\"1\" cellspacing=\"10\" cellpadding=\"5\">\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Branch Name</td>\n");
      out.write("                    ");
      out.write("\n");
      out.write("        ");

       
        branch=session.getAttribute("branch").toString();

        
      out.write("\n");
      out.write("                    <td><input type=\"text\" name=\"t1\" value=");
      out.print(branch);
      out.write(">\n");
      out.write("                        \n");
      out.write("                       </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td><select name=\"t2\">\n");
      out.write("                         <option>Staff Name</option>\n");
      out.write("                        ");

                        try
                                {
                        ct=new connect();
                        con=ct.getDriver();
                        ps=con.prepareStatement("select staffname from staffa where brname=? and staffid  not in (select staffid from userlista1)");
                        ps.setString(1,branch);
                        rs=ps.executeQuery();
                        while(rs.next())
                            {
                        
      out.write("\n");
      out.write("                           <option>");
      out.print(rs.getString(1));
      out.write("</option>\n");
      out.write("                           ");

                           }
                        }
                        catch(Exception e1)
                                {
                            out.println(e1);
                            }
                           
      out.write("\n");
      out.write("                       </select></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>User Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t3\" value=\"\" />@stegano.com</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"t4\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Confirm Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"t5\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td><input type=\"Button\" value=\"Submit\" onclick=\"demo()\" /></td>\n");
      out.write("                </tr>\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("        </center>\n");
      out.write("        </form>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

         
          result=request.getParameter("result");
 if(result==null)
                return;
               
      out.write("\n");
      out.write("               <center><font color=\"blue\">\n");
      out.write("        ");
      out.print(result);
      out.write("\n");
      out.write("               </center></font>\n");
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
