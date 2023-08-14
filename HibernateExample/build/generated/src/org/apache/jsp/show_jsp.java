package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import madurai.Employee;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.cfg.Configuration;

public final class show_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Configuration cfg;
            ServiceRegistry sr;
            SessionFactory factory;
            Session sess;
            Transaction tx;
            Employee e1=new Employee();
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            cfg=new Configuration();
            cfg.configure("hibernate.cfg.xml");
            sr=new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
            factory=cfg.buildSessionFactory(sr);
            sess=factory.openSession();
            Query qry= sess.createQuery("from Employee where salary>=:esal");
            qry.setParameter("esal",10000f);
            List<Employee> list=qry.list();
            
        
      out.write("\n");
      out.write("        <table cellpadding =\"5\" border=\"5\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Employee Id</th>\n");
      out.write("                <th>Name</th>\n");
      out.write("                <th>Designation</th>\n");
      out.write("                <th>Salary</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                for(Employee e1:list){
             
      out.write("\n");
      out.write("             <tr>\n");
      out.write("                 <td>");
      out.print(e1.getEmpid());
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(e1.getName());
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(e1.getJob());
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(e1.getSalary());
      out.write("</td>\n");
      out.write("             </tr>\n");
      out.write("             ");

                 }
              
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
