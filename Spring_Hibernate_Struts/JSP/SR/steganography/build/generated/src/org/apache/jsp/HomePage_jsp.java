package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import database.*;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                            Connection con;
                            connect ct;
                            PreparedStatement ps;
                            ResultSet rs;
                            String br;
                            

        String res;
        
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
      out.write("        <title>Member Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"bg_1.jpg\" >\n");
      out.write("        <script>\n");
      out.write("function star()\n");
      out.write("{\n");
      out.write("   \n");
      out.write("    f1.action=\"loginprocess.jsp\";\n");
      out.write("    f1.method=\"Post\";\n");
      out.write("    f1.submit();\n");
      out.write("}\n");
      out.write("function sample()\n");
      out.write("{\n");
      out.write("    \n");
      out.write("    f1.action=\"CreateUser.jsp\";\n");
      out.write("    f1.submit();\n");
      out.write("}\n");
      out.write("        </script>\n");
      out.write("        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>\n");
      out.write("        <img src=\"chair.gif\" align=\"left\" width=\"200\" height=\"200\">\n");
      out.write("            <img src=\"sigani_bfliesnflowers03-welcome.gif\" align=\"right\">\n");
      out.write("        <form name=\"f1\">\n");
      out.write("            <font color=\"white\">\n");
      out.write("            <center>\n");
      out.write("                <h1>MEMBER LOGIN</h1>\n");
      out.write("                \n");
      out.write("                 <a href=\"index.html\"><img align=\"right\"  src=\"homeicon.jpg\" width=\"50\" height=\"50\"></a>\n");
      out.write("                <table bordercolor=\"maroon\" style=\"color:maroon;font-weight:bold\" border=\"1\" cellspacing=\"10\" cellpadding=\"10\">\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Branch Name:</th>\n");
      out.write("               \n");
      out.write("                    <td colspan=\"2\" width=\"30\"><select name=\"d1\" >\n");
      out.write("                            <option>Branch Name</option>\n");
      out.write("                            \n");
      out.write("       ");
      out.write("\n");
      out.write("                            ");

                            try
                                    {
                            ct=new connect();
                            con=ct.getDriver();
                            ps=con.prepareStatement("select brname from CrimeBranch_detailsa1  ");
                            rs=ps.executeQuery();
                            while(rs.next())
                                {
                                br=rs.getString(1);

      out.write("\n");
      out.write("                            <option value=");
      out.print(br);
      out.write('>');
      out.print(br);
      out.write("</option>\n");
      out.write("                            ");

                            }
                            }
                            catch(Exception e)
                                    {
                                out.println(e);
                                }
                            
      out.write("\n");
      out.write("                    </select></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>User Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t1\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"t2\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                   \n");
      out.write("                    <td><input type=\"button\" onclick=\"sample()\" value=\"New User\"></td>\n");
      out.write("                    <td><input type=\"button\" value=\"Login\" onclick=\"star()\"/></td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("        </table>\n");
      out.write("            </center>\n");
      out.write("        </form>\n");
      out.write("        <a href=\"index.html\">Back</a>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

        res=request.getParameter("res");
        if(res==null)
            return;

        
      out.write("\n");
      out.write("        <center>\n");
      out.write("        <font color=\"blue\">\n");
      out.write("        ");
      out.print(res);
      out.write("\n");
      out.write("        </font>\n");
      out.write("        </center>\n");
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
