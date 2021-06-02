/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;
/**
 *
 * @author Sudesh Niroshan
 */
    
public class Dao {
    Connection conn=null;
    String checkStu="select * from student where email=? and password=?";
    String checkCom="select * from company where email=? and password=?";
    String checkUni="select * from university where email=? and password=?";
    String selectStu="select * from student where email=? and password=?";
    String insertEvent="insert into events values(?,?,?,?,?,?,?,?,?)";
    
    
    public void connection() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb?useSSL=true", "root", "");

    
    }
    
    
    
    public boolean checkstudent(Student st) throws SQLException{
        
        PreparedStatement pst=conn.prepareStatement(checkStu);
        pst.setString(1, st.getEmail());
        pst.setString(2,st.getPassword());
        ResultSet rs=pst.executeQuery();
        while(rs.next()){
                return true;
        
        }
        return false;
    
    
    
    
    }
     public boolean checkCompany(Company com) throws SQLException{
        
        PreparedStatement pst=conn.prepareStatement(checkCom);
        pst.setString(1, com.getEmail());
        pst.setString(2,com.getPassword());
        ResultSet rs=pst.executeQuery();
        while(rs.next()){
                return true;
        
        }
        return false;
    
    
    
    
    }
      public boolean checkUniversity(University uni) throws SQLException{
        
        PreparedStatement pst=conn.prepareStatement(checkUni);
        pst.setString(1, uni.getEmail());
        pst.setString(2,uni.getPassword());
        ResultSet rs=pst.executeQuery();
        while(rs.next()){
                return true;
        
        }
        return false;
    
    
    
    
    }
       public Student selectStudent(Student st) throws SQLException{
        
        PreparedStatement pst=conn.prepareStatement(checkStu);
        pst.setString(1, st.getEmail());
        pst.setString(2,st.getPassword());
        ResultSet rs=pst.executeQuery();
        while(rs.next()){
            
            st.setFirst_name(rs.getString(2));
           st.setLast_name( rs.getString(3));
            st.setEmail(rs.getString(4));
           
            
            
                return st;
        }
        return null;
      
    
    
    
    
    }
       public int insertEvent(Event eve) throws SQLException{
           
           PreparedStatement pst=conn.prepareStatement(insertEvent);
            pst.setString(1, "0");
            pst.setString(2, eve.getEventname());
            pst.setString(3, eve.getDescription());
            pst.setString(4,eve.getDate());
            pst.setString(5,eve.getStarttime());
            pst.setString(6 ,eve.getEndtime());
            pst.setString(7,eve.getVenue());
            pst.setString(8, eve.getUniversity());
            pst.setString(9, eve.getDefaultval());
            int rs=pst.executeUpdate();
            if (rs>0){
                    return rs;
            
            
            
            }
        return 0;
           
       }

    
    
}
