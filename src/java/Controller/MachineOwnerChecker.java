/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.MachineOwnerAuth;
import Model.TransOwnerAuth;
import dto.MachineOwnerDTO;
import dto.TransOwnerDTO;
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
public class MachineOwnerChecker extends HttpServlet 
{
     protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("AgricultureMachineryOwner.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String email = req.getParameter("email");
        String tname = req.getParameter("tname");
        String machinetype = req.getParameter("machinetype");
        String state = req.getParameter("state");
        String district = req.getParameter("district");
        String password = req.getParameter("password");
        
        
        MachineOwnerDTO teacher = new MachineOwnerDTO();
        teacher.setEmail(email);
        teacher.setTname(tname);
        teacher.setState(state);
        teacher.setMachineType(machinetype);
        teacher.setDistrict(district);
        teacher.setPassword(password);
        
        MachineOwnerAuth t1 = new MachineOwnerAuth();
        boolean regis = t1.isRegis(teacher);
        
        if(regis)
        {
           HttpSession session = req.getSession(true);
           resp.sendRedirect("index.jsp");
        }
        else
        {
            resp.sendRedirect("AgricultureMachineryOwner.html");
        }
    }
}