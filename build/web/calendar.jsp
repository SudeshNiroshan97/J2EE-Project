<%-- 
    Document   : calendar
    Created on : Mar 30, 2019, 1:24:40 AM
    Author     : Sudesh Niroshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href='resource/css/calendar/fullcalendar.min.css' rel='stylesheet' />
        <link href='resource/css/calendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
        <script src='resource/js/calendar/moment.min.js'></script>
        <script src='resource/js/calendar/jquery.min.js'></script>
        <script src='resource/js/calendar/fullcalendar.min.js'></script>

        <link rel="apple-touch-icon" sizes="76x76" href="resource/SDashboard/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="resource/SDashboard/assets/img/favicon.png">
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

        
            <form action="StudentDashboard.jsp">
         
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
            
            </div>
    </body>
</html>
