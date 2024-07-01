<%-- 
    Document   : StuQuerySubmit
    Created on : 9 Mar, 2023, 11:30:00 AM
    Author     : ashug
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Query Submit Confirmation</title>
    </head>
    <body style="display:flex;justify-content: center;align-items: center;background: url(images/education.jpg);">
        <% 
            String tname = (String)session.getAttribute("tname");
            String sname = (String)session.getAttribute("sname");
            
        %>
        <h1>Hello <%=sname%></h1><br>
        <h4>Thank you <%=sname%> for showing your interest.</h4>
        <h4><%=tname%> will contact you As soon as possible!</h4>
        
    </body>
</html>
