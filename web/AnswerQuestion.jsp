<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="Connection.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Answer Question
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="resource/SDashboard/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="resource/SDashboard/assets/css/now-ui-dashboard.css?v=1.3.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="resource/SDashboard/assets/demo/demo.css" rel="stylesheet" />
  
  
  
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
          background-color: RoyalBlue;
            }
    </style>
</head>

<body class="">
  
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
         <a href="" class="simple-text logo-mini">
          hi
        </a>
        <a href="" class="simple-text logo-normal">
         Company
        </a>
          
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="CompanyDashboard.jsp">
              <i class="now-ui-icons design_app"></i>
              <p>Dashboard</p>
            </a>
          </li>
          
            <li>
                <a href="CompanyProfile.jsp">
            <i class="now-ui-icons design_app"></i>
            <p>User Profile</p>
                </a>
          </li>
          
          
          <li class="active">
            <a href="AnswerQuestion.jsp">
           <i class="fas fa-inbox"></i>
              <p>Answer Question</p>
            </a>
          </li>
          
          </li>
          <li>
            <a href="AddJob.jsp">
            <i class="fas fa-user-tie"></i>
              <p>Job Vaccancies</p>
            </a>
          </li>
          <li>
            <a href="calendar.jsp">
          <i class="far fa-calendar-check"></i>

              <p>Calendar</p>
            </a>
          </li>
          <li>
            <a href="AddCompanyEvents.jsp">
            <i class="fas fa-briefcase"></i>

              <p>Events</p>
            </a>
          </li>
         
        </ul>
      </div>
    </div>
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              
            </div>
            <a class="navbar-brand" href="#pablo">Post Your Question Here</a>
          </div>
        
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            
              <div class="input-group no-border">
            
                <div class="input-group-append">
                 
                  
                  </div>
                </div>
              </div>
            
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                </a>
              </li>
              
           
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                <form method="post" action="Logout">
                    
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
                                            background-color: RoyalBlue;
                                        }
                                    </style>

                    
                    <button class="btn"><i class="now-ui-icons users_single-02"></i>Logout</button>

                </form>
                    
                  <p>
                    <span class="d-lg-none d-md-block">Account</span>
                  </p>
                </a>
              </li>
            </ul>
          </div>
      </nav>
        </div>
      
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>
      <div class="container" style='margin-left:275px;'>
     
      
          ` `
           <%
                Connection connection = null;   
                   
        
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb?useSSL=true", "root", "");
                        
                        int id = Integer.valueOf(request.getParameter("id"));
                        PreparedStatement pst = connection.prepareStatement(" SELECT * FROM question where id = '"+id+"' ");
                        ResultSet rs = pst.executeQuery();
                        while(rs.next())
                        {
                            String title=rs.getString("title");
                            String tags = rs.getString("tag");
                            String question = rs.getString("question");
                            int qid = rs.getInt("id");
                            request.setAttribute("tags", tags);
                            request.setAttribute("title", title);
                            request.setAttribute("question", question);
                            request.setAttribute("qid", qid);
                            
                        }
                    } 

                    catch (SQLException ex) 
                    {
                        
                    }
                %>
              
                <form action="AddAnswer" method="POST">
                    <div class="form-group">
                        <input type="text" placeholder="Place your title here" disabled style="color: rgba(1, 203, 225, 0.8); font-size: 20px; font-weight: bold" class="form-control" style="font-weight: bold;font-size: 20px;"  name="title" value='${title}'>
                    </div>
                    <div class="form-group">
                          <label style="color: #ffffff">Tags</label>
                          <input type="text" placeholder="Place your tags here" disabled class="form-control"  name="keywords" value='${tags}' style="color: rgba(1, 203, 225, 0.8);">
                          <input type="hidden" display="none" name="qid" value='1' style="color: rgba(1, 203, 225, 0.8);">
                    </div>
                    
                   
                    <div class="form-group">
                      <label style="color: #ffffff;">Question Detials</label>
                      <textarea cols="12" rows="12" placeholder="Post Your Question Details Here....." name="message" class="form-control" style="color: #ffffff;font-size: 18px;" disabled="" > ${question} </textarea>
                    </div>


                    <div class="form-group">
                        <label style="color: #ffffff">Answer</label>
                        <textarea cols="12" rows="12" placeholder="Post Your Answer Here....."  name="comment" class="form-control" ></textarea>
                    </div>
                    
                    <button class="btn btn-primary pull-right" value="submit" type="submit"> Post </button> 
                    
                     </form>
                    
                     <br>
                <br>
                <br>
                <br>
                <hr style="border: 2px solid rgba(1, 203, 225, 0.8);">
               
               <h2>Answers</h2>
               
               
              
              <%                  
                    try
                    {
                        int id = Integer.valueOf(request.getParameter("id"));
                        connection = Connector.ConnectDb();
                        PreparedStatement pst = connection.prepareStatement(" SELECT * FROM comment where q_id = '"+id+"' order by id  ");
                        ResultSet rs = pst.executeQuery();
                        while(rs.next())
                        {
                            String answer = rs.getString ("comment");
                            request.setAttribute("answer", answer);
                %>


                <ul><li><textarea cols="25" rows="500" readonly="readonly" style="color:rgba(1, 203, 225, 0.8);padding-left: 25px; padding-top: 22px; font-size: 18px; " placeholder="Posted Answer"  name="comment" class="form-control"> ${answer}</textarea></li></ul>
                <% 
                }

                } 
                catch (Exception e) {
                e.printStackTrace();
                }
                %>
                
               
                
        </div>
                
                                      
               
               
               
              
              
        
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/now-ui-dashboard.min.js?v=1.3.0" type="text/javascript"></script>
  <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
</body>

</html>