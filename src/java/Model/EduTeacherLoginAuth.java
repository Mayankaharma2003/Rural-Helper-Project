/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.EduTeacherLoginDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class EduTeacherLoginAuth 
{
    public boolean isLogin(EduTeacherLoginDTO user){
        
        String email = user.getEmail();
        String password = user.getPassword();
        
        String tablePassword="";
        
        try{
            
            Statement st=dbConnector.getStatement();
            String query = "SELECT password from eduteacher where email = '"+email+"'";
            System.out.println("Query = "+query);
            ResultSet rs = st.executeQuery(query);
            if(rs.next())
            {
                tablePassword = rs.getString("password");
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(email!=null && password!=null && !email.trim().equals("") && password.equals(tablePassword))
        {
            return true;
        }
        else{
            return false;
        }
        
    }
}
