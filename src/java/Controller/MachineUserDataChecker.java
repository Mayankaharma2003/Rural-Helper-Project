/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.MachineUserDataAuth;
import Model.TransUserDataToOwnerAuth;
import dto.MachineUserDataDTO;
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
public class MachineUserDataChecker extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("EduTeacher.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String uname = req.getParameter("uname");
        String ucontactno = req.getParameter("ucontactno");
        String state = req.getParameter("state");
        String district = req.getParameter("district");
        
        
        MachineUserDataDTO teacher = new MachineUserDataDTO();
        teacher.setSname(uname);
        teacher.setSContactNo(ucontactno);
        teacher.setState(state);
        teacher.setDistrict(district);
        
        MachineUserDataAuth t1 = new MachineUserDataAuth();
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