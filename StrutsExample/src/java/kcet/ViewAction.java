/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kcet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.sql.*;

public class ViewAction extends org.apache.struts.action.Action {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public ViewAction() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kcet1","root","");
        } catch (Exception e) {
        }
    }
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ViewActionForm frm= (ViewActionForm)form;
        int accno=frm.getAccno();
        boolean flag=false;
        
        try {
            ps=con.prepareStatement("select * from customer where accno=?");
            ps.setInt(1, accno);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                flag=true;
                frm.setName(rs.getString(2));
                frm.setAmount(rs.getFloat(3));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            System.out.println("");
        }
        if(flag)
            return mapping.findForward("view");
        else
            return mapping.findForward("fail");
    }
}
