/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Student;

import Company.PostAnswer;
import Connection.Connector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sudesh Niroshan
 */
public class PostQuestion extends HttpServlet {
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
            out.println("<title>Servlet PostQuestion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PostQuestion at " + request.getContextPath() + "</h1>");
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
      
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String question = request.getParameter("message");
        String tag = request.getParameter("keywords");
        PrintWriter out = response.getWriter();
        
        
        
        try
        {
            connection = Connector.ConnectDb();
            PreparedStatement pst = connection.prepareStatement("INSERT INTO question (title,tag,question) values (?,?,?)");
            pst.setString(1, title);
            pst.setString(2, tag);
            pst.setString(3, question);
            
            int rs= pst.executeUpdate();
            if(rs>0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Your Answer has been posted!!');");
                out.println("location='postQuestion.jsp'");
                out.println("</script>");
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Something Went Wrong!!');");
                out.println("location='postQuestion.jsp'");
                out.println("</script>");
            }
            
        }
        catch (Exception e)
        {
            out.println("Error: "+e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
