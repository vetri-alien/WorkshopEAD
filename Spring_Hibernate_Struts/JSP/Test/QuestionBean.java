import java.sql.*;
import java.io.*;

public class QuestionBean implements Serializable
   {
         private Connection con;
         private PreparedStatement ps;
         private ResultSet rs;
         private String qname,opt1,opt2,opt3,opt4,ans;
         private int qid,qno=1,last_qid,mark=0;
         String uname;
         public QuestionBean()
            {
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","sasi","victory");
	}
	catch(Exception exp)
	{
	System.out.println(exp);
	}
            }
        public void setUname(String uname) { this.uname=uname; }
        public String getUname() { return uname; }
        public void setQid(int qid) { this.qid=qid; }
        public int getQid() { return((int)(Math.random()*10)); }
        public void setMark(boolean flag)
           {
	if(flag)
	   mark++;
          }
       public int getMark() { return mark; }
       public void setQno(int qno) { this.qno=qno; }
       public int getQno() { return this.qno++; }
       public String getQname()
          {
	try
	{
	ps=con.prepareStatement("select qname from sasi_java where qid=?");
	qid=getQid();
	ps.setInt(1,qid);
	rs=ps.executeQuery();
	if(rs.next())
	  qname=rs.getString(1);
	rs.close();
	ps.close();
	}
	catch(Exception exp)
	{
	}
	return qname;
          }
          public String getOpt1()
          {
	try
	{
	ps=con.prepareStatement("select opt1 from sasi_java where qid=?");
	ps.setInt(1,qid);
	rs=ps.executeQuery();
	if(rs.next())
	  opt1=rs.getString(1);
	rs.close();
	ps.close();
	}
	catch(Exception exp)
	{
	}
	return opt1;
          }
       public String getOpt2()
          {
	try
	{
	ps=con.prepareStatement("select opt2 from sasi_java where qid=?");
	ps.setInt(1,qid);
	rs=ps.executeQuery();
	if(rs.next())
	  opt2=rs.getString(1);
	rs.close();
	ps.close();
	}
	catch(Exception exp)
	{
	}
	return opt2;
          }
      public String getOpt3()
          {
	try
	{
	ps=con.prepareStatement("select opt3 from sasi_java where qid=?");
	ps.setInt(1,qid);
	rs=ps.executeQuery();
	if(rs.next())
	  opt3=rs.getString(1);
	rs.close();
	ps.close();
	}
	catch(Exception exp)
	{
	}
	return opt3;
          }

       public String getOpt4()
          {
	try
	{
	ps=con.prepareStatement("select opt4 from sasi_java where qid=?");
	ps.setInt(1,qid);
	rs=ps.executeQuery();
	if(rs.next())
	  opt4=rs.getString(1);
	rs.close();
	ps.close();
	}
	catch(Exception exp)
	{
	}
	return opt4;
          }
       public String getAns()
          {
	try
	{
	ps=con.prepareStatement("select ans from sasi_java where qid=?");
	ps.setInt(1,qid);
	rs=ps.executeQuery();
	if(rs.next())
	  ans=rs.getString(1);
	rs.close();
	ps.close();
	}
	catch(Exception exp)
	{
	}
	return ans;
          }
   }