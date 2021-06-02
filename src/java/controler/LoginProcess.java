/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Company;
import model.Dao;
import model.Student;
import model.University;

/**
 *
 * @author Sudesh Niroshan
 */
public class LoginProcess extends HttpServlet {

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
            out.println("<title>Servlet LoginProcess</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginProcess at " + request.getContextPath() + "</h1>");
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
 try {
PrintWriter out=response.getWriter();
        String email=request.getParameter("email");
        String password=request.getParameter("pass");

//        String name = null;
//        
//        try{
//            
//             Connection connection = null;
//             ResultSet rs = null;
//             Statement statement = null;
//             connection = Connector.ConnectDb();
//             statement=connection.createStatement();
//             rs = statement.executeQuery("SELECT frist_name FROM student '"+email+"' ");
//             
//             while(rs.next()){
//             name = rs.getString("frist_name");
//             }
//        }catch(SQLException e){
//            
//        }
             
       
        HttpSession session=request.getSession();
        
    Dao chek=new Dao();
       
            chek.connection();
           
          University uni=new University(email,password,"University");
             //out.println(uni.getEmail()+uni.getPassword());
     //String name = null;
     
    
             
        Student st=new Student(email,password,"Student");
      //  out.println(st.getPassword()+st.getEmail());
         Company com=new Company(email,password,"Company");
        //     out.println(com.getEmail()+com.getPassword());
        try {
            if(chek.checkstudent(st)){
                //out.println("x3");
                //chek.selectStudent(st);
                //out.println("x4");
                session.setAttribute("semail", email);
                session.setAttribute("student", st);
                response.sendRedirect("StudentDashboard.jsp");
                
            }else if (chek.checkCompany(com)){
                session.setAttribute("cemail", email);
                session.setAttribute("company",com);
               response.sendRedirect("CompanyDashboard.jsp");
            
            }else if (chek.checkUniversity(uni)){
                session.setAttribute("uemail", email);
                session.setAttribute("university",uni);
               response.sendRedirect("UniversityDashboard.jsp");
            
            }else{
                out.println("Wrong passward or Email");
                out.println(uni.getEmail()+uni.getPassword());
                
            }
            
            
            
        }catch(SQLException | IOException e){}     
            
            
            
          
//       
//       
//     out.println("x2");
//       
//        try {
//               response.sendRedirect("StudentDashboard.jsp");
//
//            if(chek.checkstudent(st)){
//               out.println("x3");
//                //chek.selectStudent(st);
//               out.println("x4");
//                session.setAttribute("student", st);
//                
//             response.sendRedirect("StudentDashboard.jsp");
//                
//            }else{
//                
//               response.sendRedirect("Login.jsp");
//
//
//                
//            }
//        } catch (Exception ex) {
//            //Logger.getLogger(LoginProcess.class.getName()).log(Level.SEVERE, null, ex);
//        }
//     
//        
        } catch (SQLException ex) {
            Logger.getLogger(LoginProcess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginProcess.class.getName()).log(Level.SEVERE, null, ex);
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
