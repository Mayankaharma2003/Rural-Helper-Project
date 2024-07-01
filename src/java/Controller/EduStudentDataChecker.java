/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

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
public class EduStudentDataChecker extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("EduStudent.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        String sname = req.getParameter("sname");
        String scontactno = req.getParameter("scontactno");
        String  state = req.getParameter("state");
        String district = req.getParameter("district");
        
        System.out.println("Checer");
        System.out.println(sname);
        System.out.println(scontactno);
        System.out.println(state);
        System.out.println(district);
        
        if(sname!=null && scontactno!=null && state!=null && district!=null)
        {
            HttpSession session = req.getSession(true);
            session.setAttribute("sname", sname);
            session.setAttribute("scontactno", scontactno);
            session.setAttribute("state", state);
            session.setAttribute("district", district);
            resp.sendRedirect("EduStudentTeacherData.jsp");
        }
        else
        {
            resp.sendRedirect("EduStudent.html");
        }
    }
}