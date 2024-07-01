/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.AdminLoginDTO;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;

/**
 *
 * @author ashug
 */
public class AdminLoginAuth 
{
    public boolean isLogin(AdminLoginDTO admin)
    {
        
        ResultSet rs = null;
//        Connection con = null;
        String UserId = admin.getUserId();
        String Password = admin.getPassword();
        
        String name = null;
        String password = null;
        int i=0;
        if(UserId!=null && Password!=null)
        {
            try{
                
//                con = dbConnector.getConnection();
                Statement st=dbConnector.getStatement();
                String query = "SELECT password,name FROM adminlogin WHERE userid='"+UserId+"'";

                System.out.println("Query = "+query);
                rs = st.executeQuery(query);
                
                if(rs.next())
                {
                    password = rs.getString("password");
                    name = rs.getString("name");
                }
                admin.setName(name);
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
            if(UserId!=null && Password.equals(password))
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
