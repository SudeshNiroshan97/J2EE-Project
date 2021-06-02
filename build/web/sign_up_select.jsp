<%-- 
    Document   : sign_up_select
    Created on : Apr 5, 2019, 3:07:05 PM
    Author     : Sudesh Niroshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resource/images/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/vendor/SDashboard/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/fonts/login/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/fonts/login/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resource/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resource/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/css/login/util.css">
	<link rel="stylesheet" type="text/css" href="resource/css/login/main.css">
        
        <script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script>
        
        <style type="text/css">
            .hori-list {
                display: inline-block;
                
            }
            .hori-list li {
                display: inline-block;
            }
            .hori-list li a {
                font-size: 40px;
                
            }
            
        </style>
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('resource/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                            <h2>Choose Sign Up Option</h2>
                            <ul class="hori-list">
                                <li><a href="StudentRegistrationForm.jsp"><ion-icon name="contacts"></ion-icon>Student</a></li><br>
                                <li><a href="UniversityRegistrationForm.jsp"><ion-icon name="school"></ion-icon>University</a></li>
                                <li><a href="CompanyRegistrationForm.jsp"><ion-icon name="call"></ion-icon>Company</a></li>
                            </ul>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="resource/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resource/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resource/vendor/bootstrap/js/popper.js"></script>
	<script src="resource/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resource/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resource/vendor/daterangepicker/moment.min.js"></script>
	<script src="resource/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resource/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resource/js/login/main.js"></script>

</body>
</html>
