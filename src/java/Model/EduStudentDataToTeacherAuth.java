/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.EduStudentDataToTeacherDTO;
import dto.EduTeacherDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class EduStudentDataToTeacherAuth 
{
    public boolean isRegis(EduStudentDataToTeacherDTO teacher)
    {
        String scontactno = teacher.getSContactNo();
        String sname = teacher.getSname();
        
        String state = teacher.getState();
        String district = teacher.getDistrict();
        
        int i=0;
        if(scontactno!=null && sname!=null && district!=null && state!=null)
        {
            try{

                Statement st=dbConnector.getStatement();
                String query = "INSERT INTO `edustudent`(`scontactno`,`sname`,`state`,`district`) VALUES ('"+scontactno+"','"+sname+"','"+state+"','"+district+"');";
                
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
