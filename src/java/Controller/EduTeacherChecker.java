/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.EduTeacherAuth;
import Model.EduTeacherUpdateAuth;
import dto.EduTeacherDTO;
import dto.EduTeacherUpdateDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ashug
 */
public class EduTeacherChecker extends HttpServlet 
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("EduTeacher.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String email = req.getParameter("email");
        String tname = req.getParameter("tname");
        String subjects = req.getParameter("subjects");
        String state = req.getParameter("state");
        String district = req.getParameter("district");
        String password = req.getParameter("password");
        
        
        EduTeacherDTO teacher = new EduTeacherDTO();
        teacher.setEmail(email);
        teacher.setTname(tname);
        teacher.setState(state);
        teacher.setSubjects(subjects);
        teacher.setDistrict(district);
        teacher.setPassword(password);
        
        EduTeacherAuth t1 = new EduTeacherAuth();
        boolean regis = t1.isRegis(teacher);
        
        if(regis)
        {
           HttpSession session = req.getSession(true);
           resp.sendRedirect("index.jsp");
        }
        else
        {
            resp.sendRedirect("EduTeacher.html");
        }
    }
}