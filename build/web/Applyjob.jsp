<%-- 
    Document   : ApplyJob
    Created on : Apr 24, 2019, 8:37:49 PM
    Author     : Sudesh Niroshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>JSP Page</title>

        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="resource/SDashboard/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="resource/SDashboard/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

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

    <body>
        <div class="main-panel" id="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
                <div class="container-fluid">
                    <div class="navbar-wrapper">
                        <div class="navbar-toggle">

                        </div>
                        <a class="navbar-brand" href="#pablo">Apply Job</a>
                    </div>

                    <div class="collapse navbar-collapse justify-content-end" id="navigation">

                        <ul class="navbar-nav">

                            <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <form action="searchJob.jsp">
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

                                        <button class="btn"><i class="now-ui-icons users_single-02"></i>Back</button>
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
            <div class="content">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="title">Edit Profile</h5>
                            </div>
                            <div class="card-body">
                                
                                <div class="row">
                                    <div class="col-md-5 pr-1">
                                        <div class="form-group">
                                            <label>Job Title</label>
                                            <input type="text" class="form-control" disabled="" value='${job}'>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5 pr-1">
                                        <div class="form-group">
                                            <label>Frist Name</label>
                                            <input type="text" class="form-control" disabled="" value='${fname}'>
                                        </div>
                                    </div>
                                    <div class="col-md-5 pr-1">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input type="text" class="form-control" disabled="" value='${lname}' >
                                        </div>
                                    </div>
                                    <div class="col-md-4 pl-1">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <input type="email" class="form-control" disabled="" value='${semail}' >
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 pr-1">
                                        <div class="form-group">
                                            <label>University</label>
                                            <input type="text" class="form-control" disabled="" value='${uni}'>
                                        </div>
                                    </div>
                                    <div class="col-md-6 pl-1">
                                        <div class="form-group">
                                            <label>Faculty</label>
                                            <input type="text" class="form-control" disabled="" value='${faculty}'>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4 px-1">
                                        <div class="form-group">
                                            <label>Phone Number</label>
                                            <input type="text" class="form-control" disabled="" value='${pno}'>
                                        </div>
                                    </div>

                                </div>



                                <%
                                    session.removeAttribute("job");
                                    session.removeAttribute("fname");
                                    session.removeAttribute("lname");
                                    session.removeAttribute("uni");
                                    session.removeAttribute("pno");
                                    session.removeAttribute("faculty");
                                %>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
    </body>
</html>
