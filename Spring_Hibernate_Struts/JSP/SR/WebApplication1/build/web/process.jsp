<%@ page import="java.io.*,java.sql.*" %>
<%!
        Connection con;
        PreparedStatement ps;

%>
<%
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    con=DriverManager.getConnection("jdbc:odbc:transport","scott","tiger");

    String id;
    String name;
    
	String contentType = request.getContentType();
	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
    {
 		DataInputStream in = new DataInputStream(request.getInputStream());

        //we are taking the length of Content type data
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		//this loop converting the uploaded file into byte code
		while (totalBytesRead < formDataLength) {
			byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
			totalBytesRead += byteRead;
			}

		String file = new String(dataBytes);

        id=file.substring(file.indexOf("name=\"t1")+13);
        id=id.substring(0,id.indexOf("\n"));

        name=file.substring(file.indexOf("name=\"t2")+13);
        name=name.substring(0,name.indexOf("\n"));
		//for saving the file name
		String saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,contentType.length());
		int pos;
		//extracting the index of file
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		int startPos = ((file.substring(0, pos)).getBytes()).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

		// creating a new file with the same name and writing the content in new file
        FileOutputStream fileOut = new FileOutputStream(application.getRealPath("")+"\\"+saveFile);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();

        ps=con.prepareStatement("insert into sr_testing values(?,?,?)");
        ps.setString(1, id);
        ps.setString(2, name);
        ps.setString(3, saveFile);
        ps.executeUpdate();
        ps.close();
		%><Br><table border="2"><tr><td><b>You have successfully upload the file by the name of:</b>
		<% out.println(saveFile); %></td></tr></table> <%
	}
%>
