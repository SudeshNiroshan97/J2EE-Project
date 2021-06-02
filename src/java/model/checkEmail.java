/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Sudesh Niroshan
 */
public class checkEmail {
    
    public boolean checkStudentEmail(String email) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root","");
        Statement st=con.createStatement();
        String sql1="SELECT *FROM student WHERE email='"+email+"';";
        ResultSet rs=st.executeQuery(sql1);
        return !rs.next();
    }
    
    public boolean checkUniversityEmail(String email) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root","");
        Statement st=con.createStatement();
        String sql1="SELECT *FROM university WHERE email='"+email+"';";
        ResultSet rs=st.executeQuery(sql1);
        return !rs.next();
    }
    
    
    public boolean checkCompanyEmail(String email) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root","");
        Statement st=con.createStatement();
        String sql1="SELECT *FROM company WHERE email='"+email+"';";
        ResultSet rs=st.executeQuery(sql1);
        return !rs.next();
    }
    
}
