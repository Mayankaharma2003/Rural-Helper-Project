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
public class ContactUsDTO 
{
    String Name,ContactNo,Subject,Message;
    public void setName(String Name)
    {
        this.Name = Name;
    }
    public void setContactNo(String ContactNo)
    {
        this.ContactNo = ContactNo;
    }
    public void setSubject(String Subject)
    {
        this.Subject = Subject;
    }
    public void setMessage(String Message)
    {
        this.Message = Message;
    }
    public String getName()
    {
        return Name;
    }
    public String getContactNo()
    {
        return ContactNo;
    }
    public String getSubject()
    {
        return Subject;
    }
    public String getMessage()
    {
        return Message;
    }
}
