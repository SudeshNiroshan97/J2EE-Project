<%-- 
    Document   : UniversityCalendar
    Created on : Apr 27, 2019, 9:44:46 PM
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
      Calendar
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
  
   <script>
            $(document).ready(function () {

                $('#calendar').fullCalendar({
                    defaultDate: '2019-04-04',
                    editable: true,
                    eventLimit: true, // allow "more" link when too many events
                    events: "CalendarJsonServlet"
                });

            });

        </script>
</head>

   <body>

        <form action="UniversityDashboard.jsp">
         
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
  background-color: royalblue;
}
            
            
          </style><br><br>
          
           <button class="btn"><i class="now-ui-icons users_single-02"></i>Back</button>
        </form>

            <div id="calendar"></div>


    </body>
</html>
