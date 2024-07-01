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
public class TransUserDataChecker extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("TransUser.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        String uname = req.getParameter("uname");
        String ucontactno = req.getParameter("ucontactno");
        String  state = req.getParameter("state");
        String district = req.getParameter("district");
        
//        System.out.println("Checer");
//        System.out.println(uname);
//        System.out.println(ucontactno);
//        System.out.println(state);
//        System.out.println(district);
//        
        if(uname!=null && ucontactno!=null && state!=null && district!=null)
        {
            HttpSession session = req.getSession(true);
            session.setAttribute("uname", uname);
            session.setAttribute("ucontactno", ucontactno);
            session.setAttribute("state", state);
            session.setAttribute("district", district);
            resp.sendRedirect("TransOwnerUserData.jsp");
        }
        else
        {
            resp.sendRedirect("TransUser.html");
        }
    }
}