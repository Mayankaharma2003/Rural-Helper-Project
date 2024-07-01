<%-- 
    Document   : EduStudentTeacherData
    Created on : 4 Mar, 2023, 7:08:18 AM
    Author     : ashug
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        ResultSet rs = null;
        
        String sname = (String)session.getAttribute("sname");
        String scontactno = (String)session.getAttribute("scontactno");
        String sstate = (String)session.getAttribute("state");
        String sdistrict = (String)session.getAttribute("district");
            try{
                
//                con = dbConnector.getConnection();
                
                Statement st=dbConnector.getStatement();
                String query = "SELECT * FROM eduteacher;";

                System.out.println("Query = "+query);
                rs = st.executeQuery(query);
                
                %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/EduStudentformowl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/EduStudentformbootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/EduStudentformstyle.css">

    <title>Student</title>
  </head>
  <body>
  <div class="content">
    
    <div class="container">
      <h2 class="mb-5">Hello Teacher</h2>

      <div class="table-responsive">

        <table style=" padding: 1vh;"class="table table-striped custom-table">
          <thead>
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Subjects</th>
              <th scope="col">State</th>
              <th scope="col">District</th>

            </tr>
          </thead>
          
          <tbody >
              <%
                  
                while(rs.next())
                {
                    
                    %>
            <tr scope="row" >
              <td class="pl-0">&nbsp;&nbsp;&nbsp;<%=rs.getString("tname")%></td>
              <td><%=rs.getString("subjects")%></td>
              <td><%=rs.getString("state")%></td>
              <td><%=rs.getString("district")%></td>
              <td>
                  <form action="EduStudentDataToTeacher" method="post">
                    <input type="hidden" name="tname" value="<%=rs.getString("tname")%>">
                    <input type="hidden" name="sname" value="<%=sname%>">
                    <input type="hidden"  name="scontactno" value="<%=scontactno%>">
                    <input type="hidden" name="state" value="<%=sstate%>">
                    <input type="hidden" name="district" value="<%=sdistrict%>">
                    <input type="submit" value="Contact">
                  </form>
                  
              </td>
              
            </tr>
<%}%>
          </tbody>
        </table>
      </div>


    </div>

  </div>
     <%
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
%>
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
