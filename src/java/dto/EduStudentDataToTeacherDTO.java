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
public class EduStudentDataToTeacherDTO 
{
    String scontactno,sname,state,district;
    public void setSContactNo(String scontactno)
    {
        this.scontactno = scontactno;
    }
    public void setSname(String sname)
    {
        this.sname = sname;
    }
    public void setState(String state)
    {
        this.state = state;
    }
    public void setDistrict(String district)
    {
        this.district = district;
    }



    public String getSContactNo()
    {
        return scontactno;
    }
    public String getSname()
    {
        return sname;
    }
    public String getState()
    {
        return state;
    }
    public String getDistrict()
    {
        return district;
    }

}
