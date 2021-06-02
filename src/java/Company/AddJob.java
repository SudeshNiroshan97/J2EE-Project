/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Company;

import Connection.Connector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sudesh Niroshan
 */
public class AddJob extends HttpServlet {
    java.sql.Connection connection = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddJob</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddJob at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String job =request.getParameter("Job");
        String field = request.getParameter("Field");
        String description = request.getParameter("Description");
        String requirements = request.getParameter("requirements");
        String salary_range = request.getParameter("Salary_Range");
        PrintWriter out = response.getWriter();
        
        try
        {
            connection = Connector.ConnectDb();
            PreparedStatement pst = connection.prepareStatement("INSERT INTO job (job,field,description,requirements,salary_range) values (?,?,?,?,?)");
            pst.setString(1, job);
            pst.setString(2, field);
            pst.setString(3, description);
            pst.setString(4, requirements);
            pst.setString(5, salary_range);
            
            int rs= pst.executeUpdate();
            if(rs>0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Your Job has been posted!!');");
                out.println("location='CompanyDashboard.jsp'");
                out.println("</script>");
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Something Went Wrong!!');");
                out.println("location='AddJob.jsp'");
                out.println("</script>");
            }
            
        }
        catch (Exception e)
        {
            out.println("Error: "+e);
        }
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
