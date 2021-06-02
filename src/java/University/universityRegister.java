/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package University;

import Connection.Connector;
import java.io.File;
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
import model.checkEmail;

/**
 *
 * @author Sudesh Niroshan
 */
public class universityRegister extends HttpServlet {
         
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    Connection connection = null;
   String message =null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet universityRegister</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet universityRegister at " + request.getContextPath() + "</h1>");
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
        
        
            String SAVE_DIR = null;
        
          String savePath = "C:\\Users\\Sudesh Niroshan\\Documents\\NetBeansProjects\\J2EE\\web\\images\\university" + File.separator +SAVE_DIR;
        
        String university = request.getParameter("university");
        String universitytype = request.getParameter("universitytype");
        String province = request.getParameter("province");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String mobilenumber = request.getParameter("mobilenumber");
        String startedyear = request.getParameter("startedyear");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
       // String photo = request.getParameter("photo");
        
        checkEmail c=new checkEmail();
          try
        {
            if(c.checkCompanyEmail(email) && c.checkStudentEmail(email) && c.checkUniversityEmail(email)){
            connection = Connector.ConnectDb();
            PreparedStatement pst = connection.prepareStatement(" insert into university (university,universitytype,province,address,email,mobilenumber,startedyear,password,repassword) values(?,?,?,?,?,?,?,?,?)");
               
                
             
                        pst.setString(1, university);
                        pst.setString(2, universitytype);
                        pst.setString(3, province); 
                        pst.setString(4, address);
                        pst.setString(5, email);
                        pst.setString(6, mobilenumber );
                        pst.setString(7, startedyear);
                        pst.setString(8, password );
                        pst.setString(9, repassword );
//                        
          int rs = pst.executeUpdate();
           response.sendRedirect("Login.jsp");
          
          }
            else{
                response.sendRedirect("22222");
            }
        } catch (SQLException ex) {
             PrintWriter out = response.getWriter();
             out.println("Error :" +ex );
         } catch (ClassNotFoundException ex) {
            Logger.getLogger(universityRegister.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
        
        
        
    }
