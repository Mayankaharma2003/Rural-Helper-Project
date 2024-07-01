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
public class EduTeacherEmailChecker extends HttpServlet 
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("EduTeacher.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String email = req.getParameter("email");
    
        if(email!=null)
        {
           HttpSession session = req.getSession(true);
           session.setAttribute("email", email);
           resp.sendRedirect("EduTeacherUpdate_.jsp");
        }
        else
        {
            resp.sendRedirect("EduTeacher.html");
        }
    }
}