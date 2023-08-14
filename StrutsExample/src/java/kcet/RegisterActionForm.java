/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kcet;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import java.sql.*;


public class RegisterActionForm extends org.apache.struts.action.ActionForm {
    private int accno;
    private String name;
    private float amount;
    Connection con;
    PreparedStatement ps;

    public RegisterActionForm() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kcet","root","");
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int getAccno() {
        return accno;
    }

    public void setAccno(int accno) {
        this.accno = accno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }
    
    public int registerCustomerDetails(){
        int n=0;
        try {
            ps=con.prepareStatement("insert into Customer values(?,?,?)");
            ps.setInt(1,accno);
            ps.setString(2, name);
            ps.setFloat(3, amount);
            n=ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return n;
    }
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if(accno==0)
            errors.add("accno",new ActionMessage("accno.required"));
        
        if(name==null || name.length()<1)
            errors.add("name",new ActionMessage("name.required"));
        
        if(amount==0)
            errors.add("amount",new ActionMessage("amount.required"));
        return errors;
    }
}
