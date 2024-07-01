/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ContactUsAuth;
import dto.ContactUsDTO;
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
public class ContactUsChecker extends HttpServlet {

    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("index.jsp");
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        String Name = req.getParameter("Name");
        String ContactNo = req.getParameter("ContactNo");
        String Subject = req.getParameter("Subject");
        String Message = req.getParameter("Message");
        
        ContactUsDTO user = new ContactUsDTO(); 
        user.setName(Name);
        user.setContactNo(ContactNo);
        user.setSubject(Subject);
        user.setMessage(Message);
        
        ContactUsAuth a1 = new ContactUsAuth();
        boolean ContactUs = a1.isContact(user);
        
        if(ContactUs)
        {
            HttpSession session = req.getSession(true);
            System.out.println("Details Submitted Successfully.");
            
            resp.sendRedirect("index.jsp");
        }
        else
        {
            System.out.println("Details not Submitted.");
            resp.sendRedirect("index.jsp");
        }
    }

    
}
