
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.security.SecureRandom"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>
<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 %>

<%

Connection con=null;
Connection con1=null;


PreparedStatement psmt1=null;


String a = request.getParameter("cmtned");
String b = (String) session.getAttribute("b1");



try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");


psmt1=con.prepareStatement("insert into comment_need (name,need) values(?,?)");

psmt1.setString(1,a);
psmt1.setString(2,b);





psmt1.executeUpdate();




response.sendRedirect("close.html");
}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}



%>

</body>
</html>