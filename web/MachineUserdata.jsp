<%-- 
    Document   : MachineUserdata
    Created on : 4 Mar, 2023, 10:34:32 AM
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
       
        String email = (String)session.getAttribute("email");
        System.out.println("SD" + email);
            try{
                
//                con = dbConnector.getConnection();
                
                Statement st=dbConnector.getStatement();
                String query = "SELECT * FROM machineuser;";

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

    <title>Machine User Data</title>
  </head>
  <body>
  

  <div class="content">
    
    <div class="container">
      <h2 class="mb-5">Hello Owner</h2>

      <div class="table-responsive">

        <table style=" padding: 1vh;"class="table table-striped custom-table">
          <thead>
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Contact no.</th>
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
              <td class="pl-0">&nbsp;&nbsp;&nbsp;<%=rs.getString("uname")%></td>
              <td><%=rs.getString("ucontactno")%></td>
              <td><%=rs.getString("state")%></td>
              <td><%=rs.getString("district")%></td>
              
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
