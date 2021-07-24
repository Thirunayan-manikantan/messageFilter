
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Connection"%>
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



int a = (Integer) session.getAttribute("vio");
int b = (Integer) session.getAttribute("vul");
int c = (Integer) session.getAttribute("off");
int d = (Integer) session.getAttribute("hat");
int e = (Integer) session.getAttribute("sex");

int f = a+b+c+d+e;

try{
    Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter", "root","password");


psmt1=con.prepareStatement("insert into filter_avg (vio,vul,off,hate,sex,total,date) values(?,?,?,?,?,?,?)");

psmt1.setInt(1,a);
psmt1.setInt(2,b);
psmt1.setInt(3,c);
psmt1.setInt(4,d);
psmt1.setInt(5,e);
psmt1.setInt(6,f);
psmt1.setString(7,strDateNew1);




psmt1.executeUpdate();




response.sendRedirect("user_home.jsp");
}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}



%>

</body>
</html>