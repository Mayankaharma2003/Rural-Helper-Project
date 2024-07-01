/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.EduStudentDataToTeacherAuth;
import Model.EduTeacherAuth;
import dto.EduStudentDataToTeacherDTO;
import dto.EduTeacherDTO;
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
public class EduStudentDataToTeacher extends HttpServlet 
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("EduTeacher.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String sname = req.getParameter("sname");
        String scontactno = req.getParameter("scontactno");
        String state = req.getParameter("state");
        String district = req.getParameter("district");
        String tname = req.getParameter("tname");
        
        EduStudentDataToTeacherDTO teacher = new EduStudentDataToTeacherDTO();
        teacher.setSname(sname);
        teacher.setSContactNo(scontactno);
        teacher.setState(state);
        teacher.setDistrict(district);
        
        EduStudentDataToTeacherAuth t1 = new EduStudentDataToTeacherAuth();
        boolean regis = t1.isRegis(teacher);
        
        if(regis)
        {
           HttpSession session = req.getSession(true);
           session.setAttribute("tname", tname);
           session.setAttribute("sname", sname);
           resp.sendRedirect("StuQuerySubmit.jsp");
        }
        else
        {
            resp.sendRedirect("EduTeacher.html");
        }
    }
}