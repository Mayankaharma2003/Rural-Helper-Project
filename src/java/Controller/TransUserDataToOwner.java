/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.EduStudentDataToTeacherAuth;
import Model.TransUserDataToOwnerAuth;
import dto.EduStudentDataToTeacherDTO;
import dto.TransUserDataToOwnerDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ashug
 */
public class TransUserDataToOwner extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("TransUser.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String uname = req.getParameter("uname");
        String ucontactno = req.getParameter("ucontactno");
        String state = req.getParameter("state");
        String district = req.getParameter("district");
        
        
        TransUserDataToOwnerDTO teacher = new TransUserDataToOwnerDTO();
        teacher.setSname(uname);
        teacher.setSContactNo(ucontactno);
        teacher.setState(state);
        teacher.setDistrict(district);
        
        TransUserDataToOwnerAuth t1 = new TransUserDataToOwnerAuth();
        boolean regis = t1.isRegis(teacher);
        
        if(regis)
        {
           HttpSession session = req.getSession(true);
           resp.sendRedirect("index.jsp");
        }
        else
        {
            resp.sendRedirect("TransOwner.html");
        }
    }
}
