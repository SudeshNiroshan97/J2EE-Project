<%-- 
    Document   : JobVaccancies
    Created on : Apr 5, 2019, 5:31:59 PM
    Author     : Sudesh Niroshan
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Job</title>
    </head>
    <body>
        
          <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
          
          <form action="CompanyDashboard.jsp" >
          <style>
        
            td{
                padding: 20px;
                
            }
            
            div{
                width: 60%;
                border: 5px solid black;
                border-radius: 5px;
                background-color: lightsalmon;
                opacity: 0.9;
                
            }
            
            body{
                background-image: url("resource/images/ab.jpg")
            }
            
            
                             
  .btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}
            
          </style><br><br>
          
                                
                       <button class="btn"><i class="now-ui-icons users_single-02"></i>Back</button>
                      
                  </form>
          
        
          
          <h1><center>Job Vacancies</center></h1>
          
    <center>
        
          <div>

              
              <form method="POST" action="AddJob" >
                  
                 
                  
                  <table>
                      
                      <tr>
                          
                          <td>Job</td>
                          <td><input type="text" required="" name="Job"  value="" /></td>
                          
                      </tr>
                      
                      <tr>
                          
                          <td>Field</td>
                          <td><select name="Field">
                                  <option></option>
                                  <option>Computing</option>
                                  <option>Management</option>
                                  <option>Engineering</option>
                                  <option>None</option>
                                  
                              </select>
                              
                          </td>
                          
                          
                      </tr>
                      
                      
                      <tr>
                          
                          <td>Description</td>
                          <td><textarea name="Description" required="" rows="5" cols="60" placeholder="" ></textarea></td>
                          
                          
                      </tr>
                      
                      <tr>
                          
                          <td>requirements</td>
                          <td><input type="text" required="" name="requirements" value="" /></td>
                          
                      </tr>
                      
                      <tr>
                          
                          <td>Salary Range</td>
                          <td><input type="text" required="" name="Salary_Range" value="" /></td>
                          
                      </tr>
                      
                      <tr>
                          
                     <td colspan="2" style="text-align: center"><input type="submit" class="btn btn-success" value="Submit"  /></td>
                      <td><input type="reset" class="btn btn-primary" value="Clear" /></td>
                                
                          
                      </tr>
                      
                      
                
                  </table>
                  
                                

              </form>
          </div>
    </center>
                             
                  </table>
                  
              </form>
           
              
          </div>
        
    </body>
</html>
