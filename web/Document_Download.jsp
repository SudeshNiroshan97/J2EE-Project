<%-- 
    Document   : Document_Download
    Created on : Apr 20, 2019, 10:53:19 AM
    Author     : Sudesh Niroshan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download document</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%
                        try
                        {
                           Class.forName("com.mysql.jdbc.Driver");
                           String url="jdbc:mysql://localhost:3306/javaweb";
                           String username="root";
                           String password="";
                           String query="SELECT * FROM document";
                           Connection conn=DriverManager.getConnection(url,username,password);
                           Statement stmt=conn.createStatement();
                           ResultSet rs=stmt.executeQuery(query);

                               while(rs.next())
                               {
                                   String Ddocument= rs.getString("Ddocument");
                                   request.setAttribute("Ddocument", Ddocument);
                                   String Dtitle= rs.getString("Dtitle");
                                   request.setAttribute("Dtitle", Dtitle);
                                  
                %>
                <div style="background-color: red;">
                <h2><%=Dtitle%></h2>
                <a href="showdocument?param1=<%=Ddocument%>">Download </a>
                </div>
                <br>
            
                 <%
                        }   
                    }
                    catch (Exception e)
                        {           

                        }
                    
                %>

    </body>
</html>