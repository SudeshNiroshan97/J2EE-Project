package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Add_005fDocument_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add_Document</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("        <link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("                 td{\n");
      out.write("                padding: 20px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            div{\n");
      out.write("                width: 60%;\n");
      out.write("                border: 5px solid black;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                background-color: lightcyan;\n");
      out.write("                opacity: 0.8;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                background-image: url(\"resource/images/Students.jpeg\")\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("          </style><br><br>\n");
      out.write("           \n");
      out.write("            <h1><center>Add & Upload</center><br> </h1>\n");
      out.write("            \n");
      out.write("              <form action=\"UniversityDashboard.jsp\">\n");
      out.write("         \n");
      out.write("         <style>\n");
      out.write("                                  \n");
      out.write("  .btn {\n");
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
      out.write("  background-color: royalblue;\n");
      out.write("}\n");
      out.write("            \n");
      out.write("            \n");
      out.write("          </style><br><br>\n");
      out.write("          \n");
      out.write("           <button class=\"btn\"><i class=\"now-ui-icons users_single-02\"></i>Back</button>\n");
      out.write("        </form>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <div style=\"width: 750px; height: 560px; background-color: lightyellow;\">\n");
      out.write("\n");
      out.write("            \n");
      out.write("            <form action=\"AddDocument\" method=\"POST\" enctype=\"multipart/form-data\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <table>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                      \n");
      out.write("                        <td><input type=\"file\" name=\"Ddocument\"  data-multiple-caption=\"{count} files selected\" multiplestyle=\"padding-top: 10px;font-size: 13px;\"></td>\n");
      out.write("                        <td><input type=\"text\" name=\"Dtitle\" placeholder=\"Enter Document Title\"></td>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                    </tr><br>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        \n");
      out.write("                        <td><button type=\"submit\" class=\"btn btn-outline-primary\" style=\"float: right;width: 80px;height: 35px;font-size: 15px;padding-top: 5px\">Upload</button></td>\n");
      out.write("                        <td> <a href=\"University_Documentation.jsp\"> <button type=\"button\" class=\"btn btn-outline-danger\" style=\"width: 80px;height: 35px;font-size: 15px;padding-top: 5px;float: left;\">Cancel</button></a></td>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("      \n");
      out.write("                </table>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("    </center>\n");
      out.write("        \n");
      out.write("        \n");
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
