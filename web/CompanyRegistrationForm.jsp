<%-- 
    Document   : User registration Form
    Created on : Mar 7, 2019, 2:24:36 AM
    Author     : Sudesh Niroshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Registration FOrm</title>
         <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
            
        <script>
            function check() {
                
               if( document.getElementById("pass1").value === document.getElementById("pass2").value)
               {
                    
                    return true;
                }
                else{
                    alert("Passwords Do not match");
                    return false;
                }
                }
            
        </script>
    
    </head>
    <body>
        <style>
        
            td{
                padding: 20px;
                
            }
            
            div{
                width: 50%;
                border: 5px solid black;
                border-radius: 5px;
                background-color: lightcyan;
                
            }
            
            body{
                
                background-image: url("resource/images/hd-beautiful_124419389_294.jpg")
            }
            
        </style>
             
        
      
            
        <h1><center>Company Registration Form</center></h1>
                    
<center>

                <div>
                    
                       <center>
                            
                      <img src="resource/images/admin_png_18256.png">
                      
        
</center>    
                     
                    <form onsubmit="return check();" action="companyRegister" method="POST">
                    
                        
                    <table>
                        
                                
                        <tr>
                            <td>Company Name</td>
                            <td><input type="text" required="" class="form-control" name="name" value="" /></td>
                        </tr>
                        
                           
                            <tr>
                                <td>Email</td>
                                <td><input type="text" required="" placeholder="email" class="form-control" name="email" value="" /></td>
                            </tr>
                            <tr>
                                <td>Province</td>
                                        <td><select name="province">
                                                <option></option>
                                             <option>Western</option>
                                              <option>North Western</option>
                                              <option>Southern</option>
                                              <option>Central</option>
                                              <option>North Central</option>
                                              <option>Uva</option>
                                              <option>Eastern</option>
                                              <option>Northern</option>
                                              <option>Sabaragamuwa</option>
                                
                                                
                                    </select>
                                
                                </td>
                            </tr>
                            <tr>
                                <td>Web Site</td>
                                <td><input type="text" required="" class="form-control" name="web" value="" /></td>
                                
                            </tr>
                      
                            </tr>
                            
                            <tr>
                                <td>Phone Number</td>
                                <td><input type="text" required=""  class="form-control" name="phonenumber" value="" /></td>
                                
                                
                            </tr>
                           
                            <tr>
                                <td>Enter Password</td>
                                <td><input type="password" id="pass1" required="" class="form-control" name="password" value="" /></td>
                            </tr>
                            <tr>
                                <td>ReEnter Password</td>
                                <td><input type="password" id="pass2" required="" class="form-control" name="repassword" value="" /></td>
                            </tr>
                            
                            <tr>
                                <td>Profile image</td>
                                <td><input type="button" value="photo" ></td>
                            </tr>
                           
                            <tr>
                                
                                <td colspan="2" style="text-align: center"><input type="submit" class="btn btn-success" value="Submit"  /></td>
                                <td><input type="reset" class="btn btn-primary" value="Clear" /></td>

                            </tr>
                        
                    </table>
                   
                    </form>
                </div>
</center>
                    
    </body>
</html>
