<%-- 
    Document   : index
    Created on : Apr 5, 2019, 7:02:33 AM
    Author     : Sudesh Niroshan
--%>

<%@page import="model.University"%>
<%@page import="model.Company"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
                
		<link rel="icon" href="favicon.ico">
                
		<title>j2EE</title>
               
		<!-- Bootstrap core CSS -->
                
		<link href="resource/css/bootstrap.min.css" rel="stylesheet">
                
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
                
		<link href="resource/css/owl.carousel.css" rel="stylesheet">
		<link href="resource/css/owl.theme.default.min.css"  rel="stylesheet">
		<link href="resource/css/style.css" rel="stylesheet">
                
		<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
		<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
                
		<script src="resource/js/ie-emulation-modes-warning.js"></script>
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
        
        
        
        
	<body id="page-top">
             <% 
             response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            Student st=(Student)session.getAttribute("student");
            

            Company com=(Company)session.getAttribute("company");
            University un=(University)session.getAttribute("university");
            
            if(session.getAttribute("student")==null&&session.getAttribute("company")==null&&session.getAttribute("university")==null)
            {
               %>
                  

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top">
                    

                    
			<div class="container">
                             
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">

					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>


				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a href="News.jsp" class="txt2">News Feed</a>
						</li>
						<li>
							<a class="page-scroll" href="#about">Home</a>
						</li>
						<li>    
							<a class="page-scroll" href="#portfolio">Blog</a>
						</li>
						<li>
							<a class="page-scroll" href="#team">UpComing Events</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">Contact</a>
						</li>
                                                
                                                     <li>
                                                    <a class="page-scroll" href="Login.jsp">Login</a>
                                                </li>
                                                
                                                
                                                <li>
                                                    <a href="sign_up_select.jsp"  class="txt2">Sign In</a>
                                                
                                                </li>
                                           
                                                
                                              
					</ul>
                                                            

				</div>

				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->

		</nav> <%
            }else if(session.getAttribute("company")!=null){
            %>
            <!-- Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top">
                    

                    
			<div class="container">
                             
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">

					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>


				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a href="News.jsp" class="txt2">News Feed</a>
						</li>
                                                
						<li>
							<a class="page-scroll" href="#about">Home</a>
						</li>
						 <li>
                                                    <a class="page-scroll" href="CompanyDashboard.jsp">Dashboard</a>
                                                </li>
                                                <li>    
							<a class="page-scroll" href="#portfolio">Blog</a>
						</li>
						<li>
							<a class="page-scroll" href="#team">UpComing Events</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">Contact</a>
						</li>
                                                
                                                    
                                                
                                                
                                                <li>
                                                    <a href="sign_up_select.jsp"  class="txt2">Sign In</a>
                                                
                                                </li>
                                           
                                                
                                              
					</ul>
                                                            

				</div>

				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->

		</nav>
            
            
            
            
            
            
            
           <% }else if(session.getAttribute("student")!=null){%>
                <!-- Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top">
                    

                    
			<div class="container">
                             
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">

					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>


				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a href="News.jsp" class="txt2">News Feed</a>
						</li>
						<li>
							<a class="page-scroll" href="#about">Home</a>
						</li>
                                                                                                     <li>
                                                    <a class="page-scroll" href="StudentDashboard.jsp">Dashboard</a>
                                                </li>
                                                

						<li>    
							<a class="page-scroll" href="#portfolio">Blog</a>
						</li>
						<li>
							<a class="page-scroll" href="#team">UpComing Events</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">Contact</a>
						</li>
                                                
                                                
                                                <li>
                                                    <a href="sign_up_select.jsp"  class="txt2">Sign In</a>
                                                
                                                </li>
                                           
                                                
                                              
					</ul>
                                                            

				</div>

				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->

		</nav>
                <%}else if((session.getAttribute("university")!=null)){%>
                
                <!-- Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top">
                    

                    
			<div class="container">
                             
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">

					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>


				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a href="News.jsp" class="txt2">News Feed</a>
						</li>
						<li>
							<a class="page-scroll" href="#about">Home</a>
						</li>
                                                    <li>
                                                    <a class="page-scroll" href="UniversityDashboard.jsp">Dahsboard</a>
                                                </li>
                                                
						<li>    
							<a class="page-scroll" href="#portfolio">Blog</a>
						</li>
						<li>
							<a class="page-scroll" href="#team">UpComing Events</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">Contact</a>
						</li>
                                                
                                                 
                                                
                                                <li>
                                                    <a href="sign_up_select.jsp"  class="txt2">Sign In</a>
                                                
                                                </li>
                                           
                                                
                                              
					</ul>
                                                            

				</div>

				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->

		</nav>
                
                
                <%}%>