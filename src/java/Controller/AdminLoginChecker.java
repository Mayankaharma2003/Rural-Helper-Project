/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.AdminLoginAuth;
import dto.AdminLoginDTO;
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
public class AdminLoginChecker extends HttpServlet {

   
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("AdminLogin.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String UserId = req.getParameter("UserId");
        String Password = req.getParameter("Password");
        
        AdminLoginDTO d1 = new AdminLoginDTO();
        d1.setUserId(UserId);
        d1.setPassword(Password);
        
        AdminLoginAuth a1 = new AdminLoginAuth();
        boolean login = a1.isLogin(d1);
        
        if(login)
        {
            HttpSession session = req.getSession(true);
            
            session.setAttribute("UserId", UserId);
            resp.sendRedirect("AdminHome.jsp"); 
           
        }
        else
        {
            resp.sendRedirect("AdminLogin.html");
        }
    }
}
