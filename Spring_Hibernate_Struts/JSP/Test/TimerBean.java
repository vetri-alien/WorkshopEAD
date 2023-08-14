import java.applet.*;
import java.awt.*;


public class TimerBean extends Applet implements Runnable
   {
         int s;
         String s1;
         Thread t1;
         public void init()
             {
	s=60;
	s1=String.valueOf(s);
	setBackground(Color.lightGray);
	setForeground(Color.red);
	setSize(50,50);
             }
         public void start()
            {
	t1=new Thread(this);
	t1.start();
            }
         public void run()
            {
	try
	{
	while(true)
	{
	if(s==0)
	  s=60;
	s--;
	Thread.sleep(1000);
	s1=String.valueOf(s);
	if(s<10)
	  s1="0"+s;
	repaint();
	}
	}
	catch(Exception exp) {   }
            }
        public void paint(Graphics g)
           {
	g.setFont(new Font("Arial",Font.BOLD,18));
	g.drawString(s1,10,20);
           }
   }
//<applet code=TimerBean height=400 width=400> </applet>