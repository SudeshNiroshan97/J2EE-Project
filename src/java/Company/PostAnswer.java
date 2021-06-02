/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Company;

import Connection.Connector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class PostAnswer extends HttpServlet {
    private Connection connection;

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
            out.println("<title>Servlet PostAnswer</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PostAnswer at " + request.getContextPath() + "</h1>");
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
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
         String comment = request.getParameter("comment");
        PrintWriter out = response.getWriter();
//        int id = Integer.parseInt(request.getParameter("qid"));
        
        try
        {
            connection = Connector.ConnectDb();
            PreparedStatement pst = connection.prepareStatement("INSERT INTO comment (comment) values (?)");
            pst.setString(1, comment);
//            pst.setInt(2, id);
            
            if(comment.equals("") )
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Answer cannot be Blanked!!');");
                
                out.println("</script>");
            }
            else
            {
                int rs = pst.executeUpdate();
                if(rs>0)
                    {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Your Answer has been posted!!');");
                        
                        out.println("</script>");
        //              RequestDispatcher requestDispatcher = request.getRequestDispatcher("CompanyForum.jsp?id=" + id);
        //              requestDispatcher.forward(request, response);

                    }
            }
            
            
            
            
        } 
        
        catch (SQLException ex) {
            Logger.getLogger(PostAnswer.class.getName()).log(Level.SEVERE, null, ex);
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
