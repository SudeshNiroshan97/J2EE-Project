<%-- 
    Document   : AddCompanyEvents
    Created on : Apr 30, 2019, 9:24:18 AM
    Author     : Sudesh Niroshan
--%>

<!DOCTYPE html>
<html>
    <head>
        
        
	<link rel="resource/stylesheet" type="text/css" href="eventstyle.css">
   
	<link rel="resource/stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	
	<link rel="ressource/stylesheet" type="text/css" href="normalize.css">

        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Event</title>
    </head>
    <body>
        
         <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
          
         <form action="CompanyDashboard.jsp">
         
         <style>
        
            td{
                padding: 20px;
                
            }
            
            div{
                width: 60%;
                border: 5px solid black;
                border-radius: 5px;
                background-color: lightcyan;
                opacity: 0.7;
                
            }
            
            body{
                background-image: url("resource/images/crows-gig.jpg")
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
  background-color: royalblue;
}
            
            
          </style><br><br>
          
           <button class="btn"><i class="now-ui-icons users_single-02"></i>Back</button>
        </form>
        
        <h1><center>Events And Shows</center><br> </h1>
    <center>  
         
        <div>
            
            <!--%
                
                Connection connection = null;
                
                
                try{
                
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb?useSSL=true", "root", "");
                    
                     PreparedStatement pst = connection.prepareStatement(" SELECT * FROM events where id = 1 ");
                     ResultSet rs = pst.executeQuery();
                      while(rs.next())
                      
                      {
                           String Event_Name =rs.getString("Event Name");
                            String Description = rs.getString("Description");
                            String Date = rs.getString("Date");
                            String start_time = rs.getString("Start time");
                            String End_time = rs.getString("End time");
                            String Venue = rs.getString("Venue");
                            String University = rs.getString("University");
                                   
                      
                      }
                }
                
                
                    catch (SQLException ex) 
                    {
                        
                    }
                
                
                
                
                
                
             %-->
         <form action="Evententer" method="POST">
             
             
             <table>
              
                
                 
                     
                     <tr>
                         
                      <td>Event Name</td>
                      <td><input type="text" required="" name="eventname" value="" /></td>                     
                     </tr>
                 
                     <tr>
                         
                         <td>Description</td>
                         <td><textarea name="description" required="" rows="5" cols="60" placeholder="" ></textarea></td>
                         
                     </tr>
                     
                     <tr>
                         
                         <td>Date</td>
                         <td><input type="date" required="" name="date" value="" /></td>
                         
                     </tr>
                     
                     <tr>
                         
                         <td>Start time</td>
                         <td><input type="time" required="" name="starttime" value="" /></td> 
                         
                     </tr>
                     
                     <tr>
                         
                         <td>End time</td>
                         <td><input type="time" required="" name="endtime" value="" /></td>
                         
                     </tr>
                     
                     
                     
                     <tr>
                         
                         <td>Venue</td>
                         <td><input type="text" required="" name="venue" value="" /></td>
                         
                     </tr>
                     <tr>
                         
                         <td>University</td>
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
                         
                         <td>Company</td>
                         <td><input type="text" required="" name="company " value="" /></td>
                         
                         
                     </tr>
                     
                    
                     
                     
                     <tr>
                      <td colspan="2" style="text-align: center"><input type="submit" class="btn btn-success" value="Submit"  /></td>

                      <td><input type="reset"   class="btn btn-primary"  style="background-color: red;" value="Clear" /></td>
                         
                     </tr>
                                           
             </table>
  
         </form>
        </div>
</center>
        
    </body>
</html>
