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
public class TransOwnerDTO 
{
    String email,tname,state,vehicletype,district,password;
    public void setEmail(String email)
    {
        this.email = email;
    }
    public void setTname(String tname)
    {
        this.tname = tname;
    }
    public void setState(String state)
    {
        this.state = state;
    }
    public void setDistrict(String district)
    {
        this.district = district;
    }
    public void setVehicleType(String vehicletype)
    {
        this.vehicletype = vehicletype;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getEmail()
    {
        return email;
    }
    public String getTname()
    {
        return tname;
    }
    public String getVehicleType()
    {
        return vehicletype;
    }
    public String getState()
    {
        return state;
    }
    public String getDistrict()
    {
        return district;
    }
    public String getPassword()
    {
        return password;
    }
    
}
