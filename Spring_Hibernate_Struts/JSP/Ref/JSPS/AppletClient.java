import java.io.*;
import java.applet.*;
import java.awt.*;
import java.awt.event.*;
import java.net.*;

public class AppletClient extends Applet implements ActionListener
{
Button Send;
URL url;
URLConnection con;
String Msg="  ";
TextArea ta;
public void init()
{
Send = new Button("Send");
Send.addActionListener(this);
ta=new TextArea(20,20);
add(Send);
add(ta);
}
public void actionPerformed(ActionEvent ae)
{
try
{
url = new URL("http://localhost:8003/testdb.jsp");
con=url.openConnection();
con.connect();
BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
String line=null;
while((line=br.readLine())!=null)
ta.append("\n"+line);
}
catch(Exception e)
{
Msg = "Error in Sending        "+e;
repaint();
}
}
}

//<applet code=AppletClient Width=400 Height=400></applet>