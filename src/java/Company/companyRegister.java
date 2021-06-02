/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Company;

import Connection.Connector;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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
public class companyRegister extends HttpServlet {

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
    private String name;




    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String SAVE_DIR = null;
        
          String savePath = "C:\\Users\\Sudesh Niroshan\\Documents\\NetBeansProjects\\J2EE\\web\\images\\company" + File.separator +SAVE_DIR;
        
        String name_ = request.getParameter("name");
        String email = request.getParameter("email");
        String province = request.getParameter("province");
        String web = request.getParameter("web");
        String phonenumber = request.getParameter("phonenumber");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
   //     String photo = request.getParameter("photo");
        checkEmail c=new checkEmail();
        
          try
        {
            if(c.checkCompanyEmail(email) && c.checkStudentEmail(email) && c.checkUniversityEmail(email)){
            connection = Connector.ConnectDb();
            PreparedStatement pst = connection.prepareStatement(" insert into company (name,email,province,web,phonenumber,password,repassword) values(?,?,?,?,?,?,?)");
             
                        pst.setString(1, name_);
                        pst.setString(2, email);
                        pst.setString(3, province);
                        pst.setString(4, web);
                        pst.setString(5, phonenumber );
                        pst.setString(6, password );
                        pst.setString(7, repassword );
//                        
          int rs = pst.executeUpdate();
          if(rs>0){
          PrintWriter out = response.getWriter();
         response.sendRedirect("Login.jsp");
          }
        } else{
              response.sendRedirect("sss"); 
            }
       
        
        } catch (SQLException ex) {
             PrintWriter out = response.getWriter();
             out.println("Error :" +ex );
         } catch (ClassNotFoundException ex) {
             Logger.getLogger(companyRegister.class.getName()).log(Level.SEVERE, null, ex);
         }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return 
     */
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

   // private String extractFileName(Part part) {
         
 //       String[] contenDisp = part.getHeader("content-disposition");
 //       String [] items = contenDisp.split(";");
  //      for (String s : items)
  //      {
  //         if (s.trim().startsWith("filename"))
  //          {
  //              return s.substring(s.indexOf("=") + 2, s.length()-1);
  //         }
  //      }
  //      return "";
        
  //  }
        
        
        
        
        
    }
