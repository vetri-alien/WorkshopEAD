<%@ page  import="java.io.*" %>

<%

   String filename=application.getRealPath("docs")+"\\DotNetNotes.doc";


BufferedInputStream buf=null;
   ServletOutputStream myOut=null;

try{

myOut = response.getOutputStream( );
     File myfile = new File(filename);

     //set response headers
     response.setContentType("text/plain");


     response.addHeader(
        "Content-Disposition","attachment; filename=DotNetNotes.doc" );

     response.setContentLength( (int) myfile.length( ) );

     FileInputStream input = new FileInputStream(myfile);
     buf = new BufferedInputStream(input);
     int readBytes = 0;

     //read from the file; write to the ServletOutputStream
     while((readBytes = buf.read( )) != -1)
       myOut.write(readBytes);

} catch (IOException ioe){

        throw new ServletException(ioe.getMessage( ));

     } finally {

     //close the input/output streams
         if (myOut != null)
             myOut.close( );
          if (buf != null)
          buf.close( );

     }



%>
