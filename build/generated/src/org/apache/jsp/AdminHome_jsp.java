package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import db.dbConnector;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;

public final class AdminHome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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

        ResultSet rs = null;
        String email = (String)session.getAttribute("email");
        System.out.println("SD" + email);
            try{
                
//                con = dbConnector.getConnection();
                
                Statement st=dbConnector.getStatement();
                String query = "SELECT * FROM contactus;";
                
                System.out.println("Query = "+query);
                rs = st.executeQuery(query);
                
                
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"fonts/icomoon/style.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/EduStudentformowl.carousel.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/EduStudentformbootstrap.min.css\">\n");
      out.write("    \n");
      out.write("    <!-- Style -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/EduStudentformstyle.css\">\n");
      out.write("\n");
      out.write("    <title>Admin Home</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("  \n");
      out.write("\n");
      out.write("      <div class=\"content\" style=\"padding: 2vh\">\n");
      out.write("      <a href=\"index.jsp\"><button>Logout</button></a>\n");
      out.write("    \n");
      out.write("    <div class=\"container\">\n");
      out.write("        <h2 class=\"mb-5\">Hello Admin</h2>\n");
      out.write("\n");
      out.write("      <div class=\"table-responsive\">\n");
      out.write("\n");
      out.write("        <table style=\" padding: 1vh;\"class=\"table table-striped custom-table\">\n");
      out.write("          <thead>\n");
      out.write("            <tr>\n");
      out.write("              <th scope=\"col\">Name</th>\n");
      out.write("              <th scope=\"col\">Contact no.</th>\n");
      out.write("              <th scope=\"col\">Subject</th>\n");
      out.write("              <th scope=\"col\">Message</th>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("          </thead>\n");
      out.write("          \n");
      out.write("          <tbody >\n");
      out.write("              ");

                while(rs.next())
                {
                    
                    
      out.write("\n");
      out.write("            <tr scope=\"row\" >\n");
      out.write("              <td class=\"pl-0\">&nbsp;&nbsp;&nbsp;");
      out.print(rs.getString("name"));
      out.write("</td>\n");
      out.write("              <td>");
      out.print(rs.getString("contactno"));
      out.write("</td>\n");
      out.write("              <td>");
      out.print(rs.getString("subject"));
      out.write("</td>\n");
      out.write("              <td>");
      out.print(rs.getString("message"));
      out.write("</td>\n");
      out.write("              \n");
      out.write("            </tr>\n");
}
      out.write("\n");
      out.write("          </tbody>\n");
      out.write("        </table>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("     ");

            }
            catch(SQLException e)
            {
                System.out.println(e);
            }

      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("    <script src=\"js/popper.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("  </body>\n");
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
