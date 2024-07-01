/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.EduTeacherUpdateAuth;
import dto.EduTeacherUpdateDTO;
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
public class EduTeacherUpdateChecker extends HttpServlet
{
     protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("EduTeacher.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String email = req.getParameter("email");
        String tname = req.getParameter("tname");
        String state = req.getParameter("state");
        String district = req.getParameter("district");
        String password = req.getParameter("password");
        
        
        
        EduTeacherUpdateDTO teacher = new EduTeacherUpdateDTO();
        teacher.setEmail(email);
        teacher.setTname(tname);
        teacher.setState(state);
        teacher.setDistrict(district);
        teacher.setPassword(password);
        
        EduTeacherUpdateAuth t1 = new EduTeacherUpdateAuth();
        boolean update = t1.isUpdate(teacher);
        
        if(update)
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