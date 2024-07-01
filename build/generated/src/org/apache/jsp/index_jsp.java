package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("\n");
      out.write("  <title>Rural Helper</title>\n");
      out.write("  <meta content=\"\" name=\"description\">\n");
      out.write("  <meta content=\"\" name=\"keywords\">\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/aos/aos.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/remixicon/remixicon.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  <!-- ======= Header ======= -->\n");
      out.write("  <header id=\"header\" class=\"fixed-top \">\n");
      out.write("    <div class=\"container d-flex align-items-center justify-content-lg-between\">\n");
      out.write("\n");
      out.write("      <h1 class=\"logo me-auto me-lg-0\"><a href=\"index.html\">RH</a></h1>\n");
      out.write("      <a href=\"AdminLogin.html\" class=\"get-started-btn scrollto\">Admin Login</a>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </header><!-- End Header -->\n");
      out.write("\n");
      out.write("  <!-- ======= Hero Section ======= -->\n");
      out.write("  <section id=\"hero\" class=\"d-flex align-items-center justify-content-center\">\n");
      out.write("    <div class=\"container\" data-aos=\"fade-up\">\n");
      out.write("\n");
      out.write("      <div class=\"row justify-content-center\" data-aos=\"fade-up\" data-aos-delay=\"150\">\n");
      out.write("        <div class=\"col-xl-6 col-lg-8\">\n");
      out.write("          <h1>Rural Helper</h1>\n");
      out.write("          <h2>We are team to provide source of employment</h2>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write(" \n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("  <main id=\"main\">\n");
      out.write("\n");
      out.write("    <!-- ======= About Section ======= -->\n");
      out.write("    <section id=\"about\" class=\"about\">\n");
      out.write("      <div class=\"container\" data-aos=\"fade-up\">\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-lg-6 order-1 order-lg-2\" data-aos=\"fade-left\" data-aos-delay=\"100\">\n");
      out.write("            <img src=\"assets/img/about.jpg\" class=\"img-fluid\" alt=\"\">\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content\" data-aos=\"fade-right\" data-aos-delay=\"100\">\n");
      out.write("            <h3>About Us</h3>\n");
      out.write("            <p class=\"fst-italic\">\n");
      out.write("              Rural Development is an organization dedicated to improving the lives of rural communities.We provide resources and support \n");
      out.write("              that help boost economic development, bridge gaps in education and health services, and empower the people of rural regions.\n");
      out.write("              Our focus is on improving the quality of life for everyone in our rural communities.\n");
      out.write("            </p>\n");
      out.write("            \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- ======= Services Section ======= -->\n");
      out.write("    <section id=\"services\" class=\"services\">\n");
      out.write("      <div class=\"container\" data-aos=\"fade-up\">\n");
      out.write("\n");
      out.write("        <div class=\"section-title\">\n");
      out.write("          <h2>Services</h2>\n");
      out.write("          <p>Check our Services</p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-lg-4 col-md-6 d-flex align-items-stretch\" data-aos=\"zoom-in\" data-aos-delay=\"100\">\n");
      out.write("            <div class=\"icon-box\">\n");
      out.write("              <div class=\"icon\"><i class=\"bi bi-bus-front\"></i></div>\n");
      out.write("              <h4><a href=\"\">Transportation</a></h4>\n");
      out.write("              <p>Door-to-door transportation. Anywhere, anytime. Safe and reliable.</p>\n");
      out.write("              <table style=\"width: 100%;\">\n");
      out.write("                <tr>\n");
      out.write("                  <td><a href=\"TransOwner.html\"><button>Owner</button></a></td>\n");
      out.write("                  <td><a href=\"TransUser.html\"><button>User</button></a></td>\n");
      out.write("                </tr>\n");
      out.write("              </table>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0\" data-aos=\"zoom-in\" data-aos-delay=\"200\">\n");
      out.write("            <div class=\"icon-box\">\n");
      out.write("              <div class=\"icon\"><i class=\"bi bi-book\"></i></div>\n");
      out.write("              <h4><a href=\"\">Education</a></h4>\n");
      out.write("              <p>Learn, explore, and grow with our educational services.</p>\n");
      out.write("              <table style=\"width: 100%;\">\n");
      out.write("                <tr>\n");
      out.write("                  <td><a href=\"EduTeacher.html\"><button>Teacher</button></a></td>\n");
      out.write("                  <td><a href=\"EduStudent.html\"><button>Student</button></a></td>\n");
      out.write("                </tr>\n");
      out.write("              </table>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"col-lg-4 col-md-6 d-flex align-items-stretch mt-4\" data-aos=\"zoom-in\" data-aos-delay=\"100\">\n");
      out.write("            <div class=\"icon-box\">\n");
      out.write("              <div class=\"icon\"><i class=\"bx bx-world\"></i></div>\n");
      out.write("              <h4><a href=\"\">Agriculture Machinery</a></h4>\n");
      out.write("              <p>High-quality agricultural machineries servicing for best farming performance.</p>\n");
      out.write("              <table style=\"width: 100%;\">\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"AgricultureMachineryOwner.html\"><button>Owner</button></a></td>\n");
      out.write("                    <td><a href=\"AgricultureMachineryUser.html\"><button>User</button></a></td>\n");
      out.write("                </tr>\n");
      out.write("              </table>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("      <!-- ======= Contact Section ======= -->\n");
      out.write("    <section id=\"contact\" class=\"contact\">\n");
      out.write("      <div class=\"container\" data-aos=\"fade-up\">\n");
      out.write("\n");
      out.write("        <div class=\"section-title\">\n");
      out.write("          <h2>Contact</h2>\n");
      out.write("          <p>Contact Us</p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("         <div id=\"Con\" class=\"col-lg-8 mt-5 mt-lg-0\">\n");
      out.write("\n");
      out.write("            <form  action=\"ContactUsChecker\" method=\"post\" role=\"form\" class=\"php-email-form\">\n");
      out.write("              <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6 form-group\">\n");
      out.write("                  <input type=\"text\" name=\"name\" class=\"form-control\" id=\"name\" placeholder=\"Your Name\" required>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 form-group mt-3 mt-md-0\">\n");
      out.write("                  <input type=\"text\" class=\"form-control\" name=\"contactno\" id=\"email\" placeholder=\"Your Contact\" required>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group mt-3\">\n");
      out.write("                <input type=\"text\" class=\"form-control\" name=\"subject\" id=\"subject\" placeholder=\"Subject\" required>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group mt-3\">\n");
      out.write("                <textarea class=\"form-control\" name=\"message\" rows=\"5\" placeholder=\"Message\" required></textarea>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"my-3\">\n");
      out.write("                <div class=\"loading\">Loading</div>\n");
      out.write("                <div class=\"error-message\"></div>\n");
      out.write("                <div class=\"sent-message\">Your message has been sent. Thank you!</div>\n");
      out.write("              </div>\n");
      out.write("                <div class=\"text-center\"><input type=\"submit\" value=\"Send Message\"></div>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </section><!-- End Contact Section -->\n");
      out.write("\n");
      out.write("  </main><!-- End #main -->\n");
      out.write("\n");
      out.write("   \n");
      out.write("  <div id=\"preloader\"></div>\n");
      out.write("  <a href=\"#\" class=\"back-to-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n");
      out.write("\n");
      out.write("   \n");
      out.write("  <script src=\"assets/vendor/purecounter/purecounter_vanilla.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/aos/aos.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/glightbox/js/glightbox.min.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/isotope-layout/isotope.pkgd.min.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/swiper/swiper-bundle.min.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n");
      out.write("\n");
      out.write("   \n");
      out.write("  <script src=\"assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
