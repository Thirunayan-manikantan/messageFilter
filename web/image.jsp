

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<% 

Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;

ResultSet rs = null;
String d=request.getParameter("dept");
String am=request.getQueryString();
System.out.println("---------------->"+am);
try {
    Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");
stmt = con.createStatement();

rs = stmt.executeQuery("select image from user_reg where sno = '"+am+"'");

while (rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

}

// display the image

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} 

%> 