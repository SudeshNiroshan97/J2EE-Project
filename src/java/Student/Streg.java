/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Student;

import Connection.Connector;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Student;
import model.checkEmail;
@MultipartConfig(maxFileSize = 16177215) 

/**
 *
 * @author Sudesh Niroshan
 */
public class Streg extends HttpServlet {
     Connection connection = null;
     private static final String SAVE_DIR ="student";

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
            out.println("<title>Servlet Streg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Streg at " + request.getContextPath() + "</h1>");
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
        String savePath = "C:\\Users\\Sudesh Niroshan\\Documents\\NetBeansProjects\\J2EE\\web\\images\\student" + File.separator +SAVE_DIR;
        
        String fname = request.getParameter("frist_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String university = request.getParameter("university");
        String faculty = request.getParameter("faculty");
        String phonenumber = request.getParameter("phonenumber");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
//        Part part = request.getPart("photo");
//        String filename = extractFileName(part);
        checkEmail c =new checkEmail();
        
        Student std = new Student();
        std.setFirst_name(fname);
        
        
        try
        {
            if((c.checkUniversityEmail(email) && c.checkCompanyEmail(email)) && c.checkStudentEmail(email)){
                connection = Connector.ConnectDb();
                PreparedStatement pst = connection.prepareStatement(" insert into student (frist_name,last_name,email,university,faculty,phonenumber,password,repassword) values(?,?,?,?,?,?,?,?)");
                pst.setString(1, fname);
                pst.setString(2, last_name);
                pst.setString(3, email);
                pst.setString(4, university);
                pst.setString(5, faculty);
                pst.setString(6,phonenumber );
                pst.setString(7,password );
                pst.setString(8,repassword );
//
//                        String filePath = savePath + File.separator+ filename;
//                        
////                        pst.setString(9, filePath);
//                        
//                        copyFile(filename,part.getContentType(),part.getInputStream());
                
                int rs = pst.executeUpdate();
                response.sendRedirect("Login.jsp");
            }
            else{
                System.out.println("2222");
            }
        } catch (SQLException ex) {
             PrintWriter out = response.getWriter();
             out.println("Error :" +ex );
         } catch (ClassNotFoundException ex) {
             Logger.getLogger(Streg.class.getName()).log(Level.SEVERE, null, ex);
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
    
//    public void copyFile(String fileName,String fileType, InputStream in) {
//
//       try {
//
//
//       //relativeWebPath is the path to the folder you created in your web directory
//            File file = new File("C:\\Users\\Sudesh Niroshan\\Documents\\NetBeansProjects\\J2EE\\web\\images\\student"+"\\"+fileName);
//
//
//
//
//          try ( // write the inputStream to a FileOutputStream
//                  OutputStream out = new FileOutputStream(new File("C:\\Users\\Sudesh Niroshan\\Documents\\NetBeansProjects\\J2EE\\web\\images\\student" + "\\"+file.getName()))) {
//              int read = 0;
//              byte[] bytes = new byte[1024];
//
//              while ((read = in.read(bytes)) != -1) {
//                  out.write(bytes, 0, read);
//              }
//
//              in.close();
//              out.flush();
//
//          }
//
//
//    } catch (IOException e) {
//        System.out.println(e);
//    }
//    }
//    
//    private String extractFileName(Part part) {
//         
//        String contenDisp = part.getHeader("content-disposition");
//        String [] items = contenDisp.split(";");
//        for (String s : items)
//        {
//            if (s.trim().startsWith("filename"))
//            {
//                return s.substring(s.indexOf("=") + 2, s.length()-1);
//            }
//        }
//        return "";
//        
//    }

}
