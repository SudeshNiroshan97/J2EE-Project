<%-- 
    Document   : email
    Created on : Mar 16, 2019, 12:03:32 AM
    Author     : Sudesh Niroshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email</title>
        
         
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    
        
        <style>
                       
            body{
                
                background-image: url("resource/images/1085331-new-world-beautiful-places-wallpapers-2048x1366-mac.jpg")
            }
        </style>
    <center>
        <div class="container">
            <div class="jumbotron text-center">
            <h1>Send An Email</h1>
            <p><a style="color: red;" href="https://www.youtube.com/dharmeshmourya" target="_blank"></a></p>
        </div>
        <br>
        
        <form action="send" method="POST">
            
               <table class="table table-hover">
                <center>
                <tr>
                    
                    <td><h4>Name</h4></td>
                    <td><input type="text" required="" placeholder="Name" name="name" class="form-control"></td>
                    
                </tr>
                
                <tr>
                    
                    <td><h4>Email</h4></td>
                    <td><input type="email" required="" placeholder="Email" namw="email" class="form-control"></td>
                    
                </tr>
                
                <tr>
                   
                    <td><h4>Subject</h4></td>
                    <td><input type="text" required="" placeholder="Subject" name="subject" class="form-control"></td>
                    
                </tr>
                
                <tr>
                    
                    <td><h4>Message</h4></td>
                    <td><textarea name="message" required="" rows="5" cols="100" placeholder="Your Message"></textarea></td>
                    
                </tr>
                
                <center>
                    <tr>
                        
                        <td><input type="submit" id="submit" class="btn btn-primary" value="Send"></td>
                        <td><input type="reset" class="btn btn-primary" value="Clear" /></td>
                    </tr>
                    
                
               
            </table>
            </center>
                
                
            
        </form>
        
            
         
        </div>
    
    
</html>
