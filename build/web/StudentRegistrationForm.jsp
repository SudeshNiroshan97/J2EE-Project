    <%-- 
    Document   : student registration form
    Created on : Mar 7, 2019, 2:15:03 AM
    Author     : Sudesh Niroshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration Form</title>
    </head>
    <body>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
       
          <script>
            function check() {
                
               if( document.getElementById("pass1") !== document.getElementById("pass2"))
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
                background-color: lightgoldenrodyellow;
            }
                body{
                    
                   background-image: url("resource/images/hilltop-wallpapers-sunset-beautiful-portugal-128876.jpg"); 
                
                }
            
            
        </style>
            
            
        <h1><center>Students Registration Form</center></h1>
                    
                    <center>
                <div>
                    
                    <form onsubmit="return check();" action="Streg" method="POST" enctype="multipart/form-data">
                    
                    <table>
                        
                         <center>
                            
                      <img src="resource/images/admin_png_18256.png">
                      
        
</center>    
                        <tr>
                            <td>First Name</td>
                            <td><input type="text" required="" class="form-control" name="frist_name" value="" /></td>
                        </tr>
                        
                         <tr>
                                <td>Last Name</td>
                                <td><input type="text" required="" class="form-control"  name="last_name" value="" /></td>
                            </tr>
                           
                            
                            
                            <tr>
                                <td>Email</td>
                                <td><input type="text" required="" placeholder="email" class="form-control" name="email" value="" /></td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td><select name="Gender">
                                        <option></option>
                                        <option>Male</option>
                                        <option>Female</option>
                                        
                                    </select></td>
                            </tr>
                            <tr>
                                <td>University</td><br>
                            <td><select name="university">
                                                <option></option>
                                                <option>university of Moratuwa</option>
                                                <option>university of colombo</option>
                                                <option>university of kelaniya</option> 
                                                <option>university of peradeniya</option>
                                                <option>University of Sri Jayewardenepura</option>
                                                <option>Open University of Sri Lanka</option>
                                                <option>General Sir John Kotelawala Defence University</option>
                                                <option>National Institute of Business Management</option>
                                                <option> University of Jaffna</option>
                                                <option>Sri Lanka Institute of Information Technology</option>
                                                <option>NSBM Green University Town</option>
                                                <option>Sabaragamuwa University of Sri Lanka</option>
                                                <option>University of Ruhuna </option>
                                                <option>Rajarata University of Sri Lanka</option>
                                                <option>South Asian Institute of Technology and Medicine</option>
                                                <option>Eastern University, Sri Lanka</option>
                                                <option>Sri Lanka Institute of Advanced Technological Education</option>
                                                <option>South Eastern University of Sri Lanka</option>
                                                <option>Uva Wellassa University </option>
                                                <option>Wayamba University of Sri Lanka</option>
                                                <option>University of Vocational Technology </option>
                                                <option>Sri Lanka Technological Campus</option>
                                                <option>Colombo International Nautical and Engineering College</option>
                                                <option>Ceylon German Technical Training Institute</option>
                                                <option> Higher National Diploma Program in Engineering</option>
                                                <option>university of the visual and performing arts</option>
                                                <option>Maradana College of Technology</option>
                                                <option>Colombo Institute of Research & Psychology</option>
                                                <option> Informatics Institute of Technology</option>
                                                <option>Sri Lanka Institute of Nanotechnology</option>
                                                <option>Institute of Engineering Technology</option>
                                                <option>Asia Pacific University</option>
                                                <option>other</option>
                                                
                                    </select></td>
                            </tr>
                            
                            <tr>
                                <td>Faculty</td>
                                        <td><select name="faculty">
                                                <option></option>
                                                <option>Computing</option>
                                                <option>Management</option>
                                                <option>Engineering</option>
                                                <option>Others</option>
                                    </select></td>
                            </tr>
                            
                            <tr>
                                <td>Phone Number</td>
                                <td><input type="text" required="" class="form-control" name="phonenumber" value="" /></td>
                                
                                
                            </tr>
                            
                           <!-- <tr>
                                <td>Problem</td>
                                <td><input type="text" required="" class="form-control" name="problem" value="" /></td>
                            </tr>-->
                            <tr>
                                <td>Enter Password</td>
                                <td><input type="password" required="" id="pass1" name="password" value="" /></td>
                            </tr>
                            <tr>
                                <td>ReEnter Password</td>
                                <td><input type="password" required="" id="pass2" name="repassword" value="" /></td>
                            </tr>
                            
                            <tr>
                                <td>Profile image</td>
                                  <td><input type="file" value="photo" /></td>
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
