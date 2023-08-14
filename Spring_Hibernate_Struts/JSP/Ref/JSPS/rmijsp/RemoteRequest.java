import java.rmi.Remote;
import java.rmi.RemoteException;
public interface RemoteRequest extends Remote
   {	
      public void setSubject(String sub)throws 	RemoteException;
      public void setMessage(String mess)throws RemoteException;
   }
	
	