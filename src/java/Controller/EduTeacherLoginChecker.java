/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.EduTeacherLoginAuth;
import dto.EduTeacherLoginDTO;
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
public class EduTeacherLoginChecker extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("EduTeacherLogin.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        
        EduTeacherLoginDTO  user = new EduTeacherLoginDTO();
        user.setEmail(email);
        user.setPassword(password);
        
        EduTeacherLoginAuth l1 = new EduTeacherLoginAuth();
        boolean login = l1.isLogin(user);
        
        if (login)
        {
            
            HttpSession session = req.getSession(true);
            session.setAttribute("email", email);
            resp.sendRedirect("EduStudentData_.jsp");
        }
        else
        {
            resp.sendRedirect("EduTeacher.html");
        }
    }
}