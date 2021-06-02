<%-- 
    Document   : CompanyProfile
    Created on : Apr 5, 2019, 12:06:09 PM
    Author     : Sudesh Niroshan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Connection.Connector"%>
<%@page import="model.Company"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            Company profile
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
        String email=(String)session.getAttribute("cemail");
        if (session.getAttribute("company") != null) {
            Company st = (Company) session.getAttribute("company");
    %>



    <body class="">
        <div class="wrapper ">
            <div class="sidebar" data-color="orange">
                <!--
                  Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
                -->
                <div class="logo">

                    <a href="" class="simple-text logo-normal">
                        <center> <b><u><%=st.getName()%></u></b> </center>
                    </a>
                </div>
                <div class="logo">
                    <a href="" class="simple-text logo-mini">

                    </a>
                    <a href="" class="simple-text logo-normal">
                        <%=st.getEmail()%>
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
                        <li class="active ">
                            <a href="CompanyProfile.jsp">
                                <i class="now-ui-icons users_single-02"></i>
                                <p>User Profile</p>
                            </a>
                        </li>
                        <li>
                            <a href="ForumDashboard.jsp">
                                <i class="fas fa-inbox"></i>
                                <p>Answer Question</p>
                            </a>
                        </li>

                        <li>
                            <a href="AddJob.jsp">
                                <i class="fas fa-user-tie"></i>
                                <p>Job Vaccancies</p>
                            </a>
                        </li>

                        <li>

                            <a href="Message_Box.jsp">
                                <i class="fas fa-envelope"></i>

                                <p>Message_Box</p>
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
                                <button type="button" class="navbar-toggler">
                                    <span class="navbar-toggler-bar bar1"></span>
                                    <span class="navbar-toggler-bar bar2"></span>
                                    <span class="navbar-toggler-bar bar3"></span>
                                </button>
                            </div>
                            <a class="navbar-brand" href="#pablo">User Profile</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">
                            <form>
                                <div class="input-group no-border">
                                    <div class="input-group-append">

                                    </div>
                                </div>
                            </form>
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
                                    </a> 
                                        
                                        
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
                <div class="content">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="title">Edit Profile</h5>
                                </div>
                                <div class="card-body">
                                    <%
                                      java.sql.Connection connection = null;
                   
                    try
                    {
                        connection = Connector.ConnectDb();
                        PreparedStatement pst = connection.prepareStatement(" SELECT * FROM company where email='"+email+"'");
                        ResultSet rs = pst.executeQuery();
                        while(rs.next())
                        {
                           String name = rs.getString("name");
                           String cemail = rs.getString("email");
                           String province = rs.getString("province");
                           String web = rs.getString ("web");
                           String phonenumber = rs.getString ("phonenumber");
                           
                           
                           
                           request.setAttribute("name", name);
                           request.setAttribute("email",cemail);
                           request.setAttribute("province", province);
                           request.setAttribute("web", web);
                           request.setAttribute("phonenumber", phonenumber);
                          
                           
                           
                           
                           
                        }
                    }
                    catch (Exception e) 
                    {
                        e.printStackTrace();
                    }   

                %>
                                    <form>
                                        <div class="row">
                                            <div class="col-md-3 px-1">
                                                <div class="form-group">
                                                    <label>Company</label>
                                                    <input type="text" disabled="" class="form-control" disabled="" value='${name}'>
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Email address</label>
                                                    <input type="email" disabled="" class="form-control" disabled="" value='${email}'>
                                                </div>
                                            </div>
                                        </div>

                                        
                                        <div class="row">
                                            <div class="col-md-4 pr-1">
                                                <div class="form-group">
                                                    <label>province</label>
                                                    <input type="text" disabled="" class="form-control" disabled="" value='${province}'>
                                                </div>
                                            </div>
                                            <div class="col-md-4 px-1">
                                                <div class="form-group">
                                                    <label>Web</label>
                                                    <input type="text" disabled="" class="form-control" disabled="" value='${web}'>
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label>Phone number</label>
                                                    <input type="number" class="form-control" disabled="" value='${phonenumber}'>
                                                </div>
                                            </div>
                                        </div>

                                    </form>
                                </div>
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

                        } else

                            response.sendRedirect("Login.jsp");


                    %>




                    </html>