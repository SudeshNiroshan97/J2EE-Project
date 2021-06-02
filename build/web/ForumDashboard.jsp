<%-- 
    Document   : ForumDashboard
    Created on : Apr 16, 2019, 10:50:44 AM
    Author     : Sudesh Niroshan
--%>

<%@page import="model.Company"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


<%
        if(session.getAttribute("company")!=null)
        {
            Company st=(Company)session.getAttribute("company");
%>


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
            <%=st.getName() %>
        </a>
      </div>
         <div class="logo">
        <a href="" class="simple-text logo-mini">
      
        </a>
        <a href="" class="simple-text logo-normal">
         <%=st.getEmail()  %>
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
          
           <li>
            <a href="Message_Box.jsp">
            <i class="fas fa-user-tie"></i>
              <p>Message_Box</p>
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
            <a href="CompanyCalendar.jsp">
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
                
                                  

                    
                    <button class="btn"><i class="now-ui-icons users_single-02"></i>Logout</button>

                    
                    
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
      <div class="content" style="margin-left:275px;">
                <div class="row">
                    <div class="box-panel" style="width: 75%;margin-left: 10px;">
                        <h2>Post Your Answers</h2>
                        <hr>
                        
                            <%
                                 java.sql.Connection connection = null;

                                    
                                
                                try
                                    {
                                        
                                        connection = Connector.ConnectDb();
                                        PreparedStatement pst = connection.prepareStatement("SELECT * FROM question order by id desc");
                                        ResultSet rs = pst.executeQuery();
                                        
                                        while(rs.next())
                                            {
                            %>
                            
                            
                            
                            
                            
                        <table align="center" cellpadding="10" cellspacing="10" border="0" style="width:auto ; height: auto">
                            <tr>

                                <td style="border-bottom: 3px dotted #2ae6f7;padding-top: 25px; width: 1000px">
                                    <ul><li><a href="AnswerQuestion.jsp?id=<%=rs.getString("id")%>" ><%= rs.getString("title") %></a></li></ul></td>
                                <td> <i> posted by: <%=rs.getString("postedBy")%></i><br><%=rs.getString("date")%></td>
                            </tr>
                              <% 
                                            }
                                    }  
                                catch (Exception e) 
                                    {
                                        e.printStackTrace();
                                    }
                                
                              %>
                        </table>
                    </div>
                </div>
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


<%


        }else
        
                response.sendRedirect("Login.jsp");
        
        
        

%>


</html>