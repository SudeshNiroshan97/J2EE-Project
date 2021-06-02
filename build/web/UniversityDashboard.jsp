<%-- 
    Document   : UniversityDashboard
    Created on : Apr 5, 2019, 1:50:49 PM
    Author     : Sudesh Niroshan
--%>

<%@page import="model.University"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    University Dashboard
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
</head>

<%
        if(session.getAttribute("university")!=null)
        {
            University st=(University)session.getAttribute("university");
%>
    

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        
        <a href="" class="simple-text logo-mini">
          Hello
        </a>
        <a href="" class="simple-text logo-normal">
            
            <%=st.getUniversity()  %>
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
          <li class="active ">
            <a href="UniversityDashboard.jsp">
              <i class="now-ui-icons design_app"></i>
              <p>Dashboard</p>
            </a>
          </li>
           <li>
            <a href="UniversityProfile.jsp">
              <i class="now-ui-icons users_single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          <li>
            <a href="University_Documentation.jsp">
                <i class="fas fa-file-alt"></i>
              <p>Documentation</p>
            </a>
          </li>
          <li>
              
                <a href="Message_Box.jsp">
              <i class="fas fa-envelope"></i>

              <p>Message_Box</p>
            </a>
          
              
              
          </li>
         
         
          <li>
            <a href="UniversityCalendar.jsp">
            <i class="far fa-calendar-check"></i>

              <p>Calendar</p>
            </a>
          </li>
          <li>
            <a href="AddUniEvents.jsp">
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
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
           
              <div class="input-group no-border">
               
                </div>
              </div>
  
                <a class="nav-link" href="#pablo">
                  <form  method="post" action="Logout">
                                
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
              
            
          </div>
        </div>
      
      <!-- End Navbar -->
      <div class="panel-header panel-header-lg">
        <canvas id="bigDashboardChart"></canvas>
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
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
</body>


<%


        }else
        
                response.sendRedirect("Login.jsp");
        
        
        

%>


</html>