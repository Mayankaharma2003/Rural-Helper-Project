<%-- 
    Document   : EduTeacherUpdate_
    Created on : 4 Mar, 2023, 6:04:38 AM
    Author     : ashug
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
        ResultSet rs = null;
        String email = (String)session.getAttribute("email");
        System.out.println(email);
        
        int i=0;
        if(email==null)
        {
            response.sendRedirect("EduTeacher.html");
        }   
        else  if(email!=null)
        {
            try{
                
//                con = dbConnector.getConnection();
                Statement st=dbConnector.getStatement();
                String query = "SELECT * FROM eduteacher WHERE email='"+email+"'";

                rs = st.executeQuery(query);
                %>
<!DOCTYPE html>

<html>
<head>
<title>Teacher Update</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/EducationTeacherStyle.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body style="background-repeat: no-repeat; background: url(images/education.jpg);background-size: 100% 100%;">
	<!-- main -->
	<div class="main-w3layouts wrapper" style="">
		<h1 style="font-size: 8vh; font-weight: bold;">Rural Helper</h1>
		<div class="main-agileinfo">
            <h1>Teacher <br>Update</h1>
			<div class="agileits-top">
				<form action="EduTeacherUpdateChecker" method="post">
                                    <%
                                    if(rs.next())
                                    {%>
					<input class="text" type="text" name="tname" value="<%=rs.getString("tname")%>" placeholder="Enter your Name." required="">
					<input class="text email" type="text" name="email" placeholder="Enter your Email" value="<%=email%>" readonly required="">
					<input class="text" type="password" name="password" value="<%=rs.getString("password")%>" placeholder="Enter Password" required="">
                                        <input class="text w3lpass" type="text" name="state" value="<%=rs.getString("state")%>" placeholder="Enter your State" required="">
                                        <input class="text" type="text" name="district" value="<%=rs.getString("district")%>" placeholder="Enter District" required="">
                
                    
					<input style="font-weight: bold; color: black; border-radius: 1vh;background-color: chartreuse;" type="submit" value="Update">
				</form>
                                        <%}%><%
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
        }
        else
        {
            response.sendRedirect("EduTeacher.html");
        }
%>
				
			</div>
		</div>
		
	</div>
	<!-- //main -->
</body>
