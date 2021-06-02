<%-- 
    Document   : postQuestion
    Created on : Mar 29, 2019, 11:37:23 PM
    Author     : Sudesh Niroshan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Connection.Connector"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="resource/SDashboard/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resource/SDashboard/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Now UI Dashboard by Creative Tim
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
        if(session.getAttribute("student")!=null)
        {
            Student st=(Student)session.getAttribute("student");
%>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="" class="simple-text logo-mini">
         Hi
        </a>
        <a href="" class="simple-text logo-normal">
         <%=st.getFirst_name()  %>
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
            <a href="StudentDashboard.jsp">
              <i class="now-ui-icons design_app"></i>
              <p>Dashboard</p>
            </a>
          </li>
           <li>
            <a href="studentProfile.jsp">
              <i class="now-ui-icons users_single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          
          <li class="active ">
            <a href="postQuestion.jsp">
              <i class="now-ui-icons location_map-big"></i>
              <p>Post Question</p>
            </a>
          </li>
          <li>
            <a href="searchJob.jsp">
                <i class="fas fa-search"></i>
              <p>Search Job</p>
            </a>
             </li>
          <li>
            <a href="calendar.jsp">
                <i class="far fa-calendar-check"></i>
              <p>Calendar</p>
            </a>
          </li>
         
          <li>
            <a href="events.jsp">
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
            
            <ul class="navbar-nav">
            
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
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>
      
        
            
          <form class="margin-top-40" action="PostQuestion" method="post">
               
                <label style="color: #ffffff">Question Title</label>
                <input type="text" placeholder="Place your title here" class="form-control" name="title">
              
                <label class="s-label mb4 d-block" for="wmd-input">Question</label>
                       <div class="wmd-container mb8">
                             <div id="wmd-button-bar" class="wmd-button-bar btr-sm mt0"></div>
                                 <div class="js-stacks-validation">
                                     <div class="ps-relative">
                                       <textarea id="wmd-input" class="wmd-input js-wz-element s-input bar0" name="message" cols="92" rows="15" tabindex="101" data-wz-state = "256" data-min-length=""></textarea>
                                     </div>
                                 <div class="s-input-message mt4 d-none js-stacks-validation-message"></div>
                             </div>
                       </div>
                 
                  <label>Tags</label>
                  <input type="text" placeholder="Place your tags here" class="form-control" name="keywords">
               
                <button class="btn btn-primary pull-right" value="submit">Post </button>
          </form>
            
          
     
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="resource/SDashboard/assets/js/core/jquery.min.js"></script>
  <script src="resource/SDashboard/assets/js/core/popper.min.js"></script>
  <script src="resource/SDashboard/assets/js/core/bootstrap.min.js"></script>
  <script src="resource/SDashboard/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="resource/SDashboard/assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="resource/SDashboard/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="resource/SDashboard/assets/js/now-ui-dashboard.min.js?v=1.3.0" type="text/javascript"></script>
  <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="resource/SDashboard/assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initGoogleMaps();
    });
  </script>
</body>
<%


        }else
        
                response.sendRedirect("Login.jsp");
        
        
        

%>
</html>