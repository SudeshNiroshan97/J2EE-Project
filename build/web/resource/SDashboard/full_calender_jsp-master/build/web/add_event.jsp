<%-- 
    Document   : add_event
    Created on : Jul 10, 2018, 8:52:10 PM
    Author     : Saroj
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% int id = 0; %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root", "");
    ResultSet rs = con.createStatement().executeQuery("SELECT COUNT(`id`) FROM `calendar`");
    if (rs.next()) {
        id = rs.getInt(1)+1;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="add_event_servlet" method="POST">
            <table>
               
                    <tr>
                        <td>id</td>
                        <td><input type="text" name="id" value="<%= id%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Title</td>
                        <td><input type="text" name="title" value="" /></td>
                    </tr>
                    <tr>
                        <td>Start</td>
                        <td><input type="date" name="start" value="" /></td>
                    </tr>
                    <tr>
                        <td>End</td>
                        <td><input type="date" name="end" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="submit" /></td>
                    </tr>
                
            </table>

        </form>
                        <%= request.getParameter("message") %>
                    <a href="view_event.jsp">view</a>
    </body>
</html>
