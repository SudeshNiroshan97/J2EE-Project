/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Student;

import Connection.Connector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sudesh Niroshan
 */
public class Applyjob extends HttpServlet {

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
            out.println("<title>Servlet Applyjob</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Applyjob at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        
        HttpSession session=request.getSession();
        
        String id = request.getParameter("job_id");
        String stemail = request.getParameter("stemail");
        
        Connection connection = null;
        Statement statement = null, 
                statement1 = null;
        ResultSet resultSet = null, 
                resultSet1 = null;
        String job=null,
                fname,
                lname,
                university,
                faculty,
                phonenumber;
        
        try {
            connection = Connector.ConnectDb();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM job WHERE j_id='"+id+"'");
            while(resultSet.next()){
                job = resultSet.getString("job");
            }
            
            session.setAttribute("job", job);
            
            statement1 = connection.createStatement();
            resultSet1 = statement1.executeQuery("SELECT * FROM student WHERE email='"+stemail+"'");
            while(resultSet1.next()){
                fname = resultSet1.getString("frist_name");
                lname = resultSet1.getString("last_name");
                university = resultSet1.getString("university");
                faculty = resultSet1.getString("faculty");
                phonenumber = resultSet1.getString("phonenumber");
                
                session.setAttribute("fname", fname);
                session.setAttribute("lname", lname);
                session.setAttribute("uni", university);
                session.setAttribute("faculty", faculty);
                session.setAttribute("pno", phonenumber);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Applyjob.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        response.sendRedirect("Applyjob.jsp");
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
