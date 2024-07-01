/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author ashug
 */
public class AdminLoginDTO 
{
    String UserId,Password,Name;
    public void setUserId(String UserId)
    {
        this.UserId = UserId;
    }
    public void setPassword(String Password)
    {
        this.Password = Password;
    }
    public void setName(String Name)
    {
        this.Name = Name;
    }
    public String getUserId()
    {
        return UserId;
    }
    public String getPassword()
    {
        return Password;
    }
    public String getName()
    {
        return Name;
    }
}
