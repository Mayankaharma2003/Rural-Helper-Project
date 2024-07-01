/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.ContactUsDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class ContactUsAuth 
{
    public boolean isContact(ContactUsDTO user)
    {
        String Name = user.getName();
        String ContactNo = user.getContactNo();
        String Subject = user.getSubject();
        String Message = user.getMessage();
        
        int i=0;
        if(Name!=null && ContactNo!=null && Subject!=null && Message!=null)
        {
            try{

                Statement st=dbConnector.getStatement();
                String query = "INSERT INTO `contactus`(`name`,`contactno`,`subject`,`message`) VALUES ('"+Name+"','"+ContactNo+"','"+Subject+"','"+Message+"');";

                System.out.println("Query = "+query);
                i = st.executeUpdate(query);
                
//                System.out.println(Name);
//                System.out.println(ContactNo);
//                System.out.println(Subject);
//                System.out.println(Message);
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
            if(i>0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }
}
