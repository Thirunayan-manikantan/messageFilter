<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 %>

<%

Connection con=null;
Connection con1=null;


PreparedStatement psmt1=null;
PreparedStatement psmt2=null;




String csname = (String) session.getAttribute("b1");
String csid=(String) session.getAttribute("l1");
String cgname=(String) session.getAttribute("cgnm");
String cgid = (String) session.getAttribute("cgid");
String msg = (String) session.getAttribute("str7");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");

psmt1=con2.prepareStatement("insert into chat(sender,sender_id,getter,getter_id,date_time,message) values(?,?,?,?,?,?)");

psmt1.setString(1,csname);
psmt1.setString(2,csid);
psmt1.setString(3,cgname);
psmt1.setString(4,cgid);
psmt1.setString(5,strDateNew1);
psmt1.setString(6,msg);


psmt1.executeUpdate();

response.sendRedirect("user_home.jsp");

}

catch(Exception ex)
{

out.println("Error in connection : "+ex);

}



%>

