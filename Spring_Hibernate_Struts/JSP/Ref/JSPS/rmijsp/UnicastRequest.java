import java.awt.*;
import java.rmi.*;
import javax.swing.*;
import java.awt.event.*;
import java.rmi.server.*;
import java.rmi.registry.*;
class Monitor extends JFrame
   {
       private Container c;
       protected JTextArea ta;
       protected Monitor()
          {
	super("Monitor Requests ");
	c=getContentPane();	
	ta = new JTextArea(40,40);
	ta.setFont(new Font("Sans",Font.BOLD,20));
	ta.setEditable(false);
	c.add("Center",ta);
	pack();
	setVisible(true);
setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}
}
public class UnicastRequest extends UnicastRemoteObject implements RemoteRequest
{
private static Monitor m;
private static int count=1;
public UnicastRequest() throws RemoteException
{
m=new Monitor();
}
public void setSubject(String sub)throws RemoteException
{
m.ta.append("\nSubject is "+sub);
}
public void setMessage(String mess)throws RemoteException
{
m.ta.append("\nMessage is "+mess);
m.ta.append("\n\nRequest Number is "+count++);
}
public static void main(String args[])
{
try
{
UnicastRequest req=new UnicastRequest();
Registry reg=LocateRegistry.createRegistry(2422);
reg.rebind("ser",req);
}catch(Exception ex)
{
m.ta.setText("Err in Server "+ex);
}
}
}