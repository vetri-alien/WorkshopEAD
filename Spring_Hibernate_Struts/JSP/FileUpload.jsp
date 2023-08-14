<%-- 
    Document   : SendFiles1
    Created on : Dec 8, 2014, 7:19:59 PM
    Author     : Administrator
--%>

<%@page import="java.io.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="database.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!            
            PreparedStatement ps;
            ResultSet rs;
            InputStream in;
            ByteArrayOutputStream bout;
            FileOutputStream fout;
            byte[] buffer;
            String contentType, content;
            int c;
            
            String fileId,user,subject,fname,fileName,sendDate;

            public String getParameterValue(String content, String paramName) {
                String paramValue = "";
                int startIndex = content.indexOf(paramName) + paramName.length() + 3;
                int endIndex = content.indexOf("--", startIndex);
                paramValue = content.substring(startIndex, endIndex).trim();
                return paramValue;
            }

        %>
        
        <%
            contentType = request.getContentType();
            in = request.getInputStream();
            bout = new ByteArrayOutputStream();

            while ((c = in.read()) != -1)
            {
                bout.write(c);
            }
            buffer = bout.toByteArray();
            content = new String(buffer);
            bout.close();


            // Start of Code for getting the uploaded file name            
            String saveFile = content.substring(content.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));            
            fileName = saveFile;     //this is uploaded file name       
            // End of Code for getting the uploaded file name

            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1, contentType.length());
            int pos;
            
            // Start of Code for extracting the index of content
            pos = content.indexOf("filename=\"");
            pos = content.indexOf("\n", pos) + 1;
            pos = content.indexOf("\n", pos) + 1;
            pos = content.indexOf("\n", pos) + 1;

            int boundaryLocation = content.indexOf(boundary, pos) - 4;
            int startPos = ((content.substring(0, pos)).getBytes()).length;
            int endPos = ((content.substring(0, boundaryLocation)).getBytes()).length;            
            //End of Code for extracting the index of content

            
            // Code for creating a new file with the same name and writing the content in new file
            fout = new FileOutputStream(application.getRealPath("Files") + "\\" + fileName);
            fout.write(buffer, startPos, endPos - startPos);
            fout.flush();
            fout.close();

            //Start of Code for getting parameter values requested by client
            fileId=getParameterValue(content, "fileid");
            user=getParameterValue(content, "user");
            subject=getParameterValue(content, "subject");
            fname=getParameterValue(content, "fname");
            sendDate=getParameterValue(content, "senddate");
            
            //End of Code for getting parameter values requested by client
            
            ps=con.prepareStatement("insert into SendFiles values(?,?,?,?,?,?)");
            ps.setString(1, fileId);
            ps.setString(2, user);
            ps.setString(3, subject);
            ps.setString(4, fname);
            ps.setString(5, fileName);
            ps.setString(6, sendDate);
            ps.executeUpdate();
            ps.close();
            response.sendRedirect("SendFiles.jsp?msg=File Sent to the User!!");
            //out.println("<script>alert('File Sent to the User!!');</script>");
            
        %>

    </body>
</html>
