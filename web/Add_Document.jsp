<%-- 
    Document   : Add_Document
    Created on : Apr 20, 2019, 11:02:57 AM
    Author     : Sudesh Niroshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Document</title>
    </head>
    <body>
      
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        
        <style>
            
                 td{
                padding: 20px;
                
            }
            
            div{
                width: 60%;
                border: 5px solid black;
                border-radius: 5px;
                background-color: lightcyan;
                opacity: 0.8;
                
            }
            
            body{
                background-image: url("resource/images/Students.jpeg")
            }
            
          </style><br><br>
           
            <h1><center>Add & Upload</center><br> </h1>
            
              <form action="UniversityDashboard.jsp">
         
         <style>
                                  
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
  background-color: royalblue;
}
            
            
          </style><br><br>
          
           <button class="btn"><i class="now-ui-icons users_single-02"></i>Back</button>
        </form>
            
            
    <center>
        
        <div style="width: 750px; height: 560px; background-color: lightyellow;">

            
            <form action="AddDocument" method="POST" enctype="multipart/form-data">
                
                
                <table>
                    
                    <tr>
                      
                        <td><input type="file" name="Ddocument"  data-multiple-caption="{count} files selected" multiplestyle="padding-top: 10px;font-size: 13px;"></td>
                        <td><input type="text" name="Dtitle" placeholder="Enter Document Title"></td>
                        
                        
                    </tr><br>
                    
                    <tr>
                        
                        <td><button type="submit" class="btn btn-outline-primary" style="float: right;width: 80px;height: 35px;font-size: 15px;padding-top: 5px">Upload</button></td>
                        <td> <a href="University_Documentation.jsp"> <button type="button" class="btn btn-outline-danger" style="width: 80px;height: 35px;font-size: 15px;padding-top: 5px;float: left;">Cancel</button></a></td>
                        
                    </tr>
                    
      
                </table>
                
                
            </form>
        </div>
       
    </center>
        
        
    </body>
</html>
