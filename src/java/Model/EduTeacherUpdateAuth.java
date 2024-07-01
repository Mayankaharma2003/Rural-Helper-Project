/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;

import dto.EduTeacherUpdateDTO;

import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class EduTeacherUpdateAuth 
{
    public boolean isUpdate(EduTeacherUpdateDTO teacher)
    {
        String email = teacher.getEmail();
        String tname = teacher.getTname();
        String state = teacher.getState();
        String district = teacher.getDistrict();
        String password = teacher.getPassword();
        
        
        
        int i=0;
        if(email!=null && tname!=null && district!=null && state!=null && password!=null)
        {
            try{

                Statement st=dbConnector.getStatement();
                String query = "UPDATE `eduteacher` SET `tname`='"+tname+"',`state`='"+state+"',`district`='"+district+"',`password`='"+password+"' WHERE `email`='"+email+"';";
                
                System.out.println("Query = "+query);
                i = st.executeUpdate(query);
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
