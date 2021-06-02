package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Connection.Connector;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import model.Student;

public final class StudentDashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\" />\n");
      out.write("  <link rel=\"apple-touch-icon\" sizes=\"76x76\" href=\"../assets/img/apple-icon.png\">\n");
      out.write("  <link rel=\"icon\" type=\"image/png\" href=\"resource/SDashboard/assets/img/favicon.png\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\n");
      out.write("  <title>\n");
      out.write("    Student Dashboard\n");
      out.write("  </title>\n");
      out.write("  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />\n");
      out.write("  <!--     Fonts and icons     -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700,200\" rel=\"stylesheet\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.1/css/all.css\" integrity=\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\" crossorigin=\"anonymous\">\n");
      out.write("  <!-- CSS Files -->\n");
      out.write("  <link href=\"resource/SDashboard/assets/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("  <link href=\"resource/SDashboard/assets/css/now-ui-dashboard.css?v=1.3.0\" rel=\"stylesheet\" />\n");
      out.write("  <!-- CSS Just for demo purpose, don't include it in your project -->\n");
      out.write("  <link href=\"resource/SDashboard/assets/demo/demo.css\" rel=\"stylesheet\" />\n");
      out.write("</head>\n");

        if(session.getAttribute("student")!=null)
        {
            Student st=(Student)session.getAttribute("student");

      out.write("\n");
      out.write("    \n");
      out.write("<body class=\"\">\n");
      out.write("  <div class=\"wrapper \">\n");
      out.write("    <div class=\"sidebar\" data-color=\"orange\">\n");
      out.write("      <!--\n");
      out.write("        Tip 1: You can change the color of the sidebar using: data-color=\"blue | green | orange | red | yellow\"\n");
      out.write("    -->\n");
      out.write("      <div class=\"logo\">\n");
      out.write("        <a href=\"\" class=\"simple-text logo-mini\">\n");
      out.write("          hi\n");
      out.write("        </a>\n");
      out.write("        <a href=\"\" class=\"simple-text logo-normal\">\n");
      out.write("            \n");
      out.write("            ");
      out.print(st.getFirst_name()  );
      out.write("\n");
      out.write("        </a>\n");
      out.write("      </div>\n");
      out.write("         <div class=\"logo\">\n");
      out.write("        <a href=\"\" class=\"simple-text logo-mini\">\n");
      out.write("      \n");
      out.write("        </a>\n");
      out.write("        <a href=\"\" class=\"simple-text logo-normal\">\n");
      out.write("         ");
      out.print(st.getEmail()  );
      out.write("\n");
      out.write("        </a>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"sidebar-wrapper\" id=\"sidebar-wrapper\">\n");
      out.write("        <ul class=\"nav\">\n");
      out.write("           <li class=\"active\">\n");
      out.write("            <a href=\"StudentDashboard.jsp\">\n");
      out.write("              <i class=\"now-ui-icons design_app\"></i>\n");
      out.write("              <p>Dashboard</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"studentProfile.jsp\">\n");
      out.write("              <i class=\"now-ui-icons users_single-02\"></i>\n");
      out.write("              <p>User Profile</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("            <li>\n");
      out.write("            <a href=\"postQuestion.jsp\">\n");
      out.write("              <i class=\"now-ui-icons location_map-big\"></i>\n");
      out.write("              <p>Post Question</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"searchJob.jsp\">\n");
      out.write("                <i class=\"fas fa-search\"></i>\n");
      out.write("              <p>Search Job</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("        \n");
      out.write("          <li>\n");
      out.write("            <a href=\"calendar.jsp\">\n");
      out.write("                <i class=\"far fa-calendar-check\"></i>\n");
      out.write("              <p>Calendar</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("       \n");
      out.write("          <li>\n");
      out.write("            <a href=\"events.jsp\">\n");
      out.write("                <i class=\"fas fa-briefcase\"></i>\n");
      out.write("              <p>Events</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"main-panel\" id=\"main-panel\">\n");
      out.write("      <!-- Navbar -->\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"navbar-wrapper\">\n");
      out.write("            <div class=\"navbar-toggle\">\n");
      out.write("              \n");
      out.write("            </div>\n");
      out.write("            <a class=\"navbar-brand\" href=\"#pablo\">Dashboard</a>\n");
      out.write("          </div>\n");
      out.write("         \n");
      out.write("          <div class=\"collapse navbar-collapse justify-content-end\" id=\"navigation\">\n");
      out.write("            \n");
      out.write("      \n");
      out.write("            <ul class=\"navbar-nav\">\n");
      out.write("             \n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link\" href=\"#pablo\">\n");
      out.write("                  <form method=\"post\" action=\"Logout\">\n");
      out.write("\n");
      out.write("                          \n");
      out.write("                    <style>\n");
      out.write(".btn {\n");
      out.write("  background-color: DodgerBlue;\n");
      out.write("  border: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 12px 16px;\n");
      out.write("  font-size: 16px;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Darker background on mouse-over */\n");
      out.write(".btn:hover {\n");
      out.write("  background-color: RoyalBlue;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("                    \n");
      out.write("                    <button class=\"btn\"><i class=\"now-ui-icons users_single-02\"></i>Logout</button>\n");
      out.write("\n");
      out.write("                  </form>\n");
      out.write("\n");
      out.write("                  <p>\n");
      out.write("                    <span class=\"d-lg-none d-md-block\">Account</span>\n");
      out.write("                  </p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("      <!-- End Navbar -->\n");
      out.write("      <div class=\"panel-header panel-header-lg\">\n");
      out.write("        <canvas id=\"bigDashboardChart\"></canvas>\n");
      out.write("      </div>\n");
      out.write("     \n");
      out.write("       <div class=\"content\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          \n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("      </footer>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <!--   Core JS Files   -->\n");
      out.write("  <script src=\"../assets/js/core/jquery.min.js\"></script>\n");
      out.write("  <script src=\"../assets/js/core/popper.min.js\"></script>\n");
      out.write("  <script src=\"../assets/js/core/bootstrap.min.js\"></script>\n");
      out.write("  <script src=\"../assets/js/plugins/perfect-scrollbar.jquery.min.js\"></script>\n");
      out.write("  <!--  Google Maps Plugin    -->\n");
      out.write("  <script src=\"https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE\"></script>\n");
      out.write("  <!-- Chart JS -->\n");
      out.write("  <script src=\"../assets/js/plugins/chartjs.min.js\"></script>\n");
      out.write("  <!--  Notifications Plugin    -->\n");
      out.write("  <script src=\"../assets/js/plugins/bootstrap-notify.js\"></script>\n");
      out.write("  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->\n");
      out.write("  <script src=\"../assets/js/now-ui-dashboard.min.js?v=1.3.0\" type=\"text/javascript\"></script>\n");
      out.write("  <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->\n");
      out.write("  <script src=\"../assets/demo/demo.js\"></script>\n");
      out.write("  <script>\n");
      out.write("    $(document).ready(function() {\n");
      out.write("      // Javascript method's body can be found in assets/js/demos.js\n");
      out.write("      demo.initDashboardPageCharts();\n");
      out.write("\n");
      out.write("    });\n");
      out.write("  </script>\n");
      out.write("</body>\n");



        }else
        
                response.sendRedirect("Login.jsp");
        
        
        


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
