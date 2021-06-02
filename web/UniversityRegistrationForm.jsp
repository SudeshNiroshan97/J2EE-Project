<%-- 
    Document   : UniversityRegistrationForm
    Created on : Mar 17, 2019, 7:06:03 AM
    Author     : Sudesh Niroshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>University Registration OF</title>
    </head>
    <body>
        
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
                background-image: url("resource/images/beautiful-wallpaper-hd.jpg")
            }
            
        </style>
        
        <h1><center>University Registration Form</center></h1>
        
    <center>
        
        <div>
            <form onsubmit="return check();" action="universityRegister" method="POST">
                <table>
                    
                       <center>
                            
                      <img src="resource/images/admin_png_18256.png">
                      
        
</center>    
                    
                    <tr>
                        
                        <td>University</td>
                        <td><input type="text" required="" class="form-control" name="university" value="" /></td>
                        
                    </tr>
                    
                    <tr>
                        
                        <td>University Type</td>
                        
                        
                        <td><select name="universitytype">
                                <option></option>
                                <option>Goverment</option>
                                <option>Semi Goverment</option>
                                <option>Private</option>
                                
                            </select>
                            
                        </td>
                        
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
                        
                        <td>Address</td>
                        <td><input type="text" required="" class="form-control" name="address" value="" /></td>
                        
                    </tr>
                    
                    <tr>
                        
                        <td>Email</td>
                        <td><input type="text" required="" placeholder="email" class="form-control" name="email" value="" /></td>
                        
                    </tr>
                    
                    <tr>
                        
                        <td>Mobile Number</td>
                        <td><input type="text" required="" class="form-control" name="mobilenumber" value="" /></td>
                        
                    </tr>
                    
                    <tr>
                        
                        <td>Started Year</td>
                        <td><input type="text" required="" class="form-control" name="startedyear" value="" /></td>
                        
                    </tr>
                    
                    <tr>
                        
                        <td>Password</td>
                        <td><input type="password" id="pass1" required=""  class="form-control" name="password" value="" /></td>
                        
                    </tr>
                    
                    <tr>
                        
                        <td>ReEnter Password</td>
                        <td><input type="password" id="pass2" required=""  class="form-control" name="repassword" value="" /></td>
                        
                    </tr>
                    
                    <tr>
                        
                        <td>University image</td>
                        <td><input type="submit" value="photo" /></td>
                        
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
