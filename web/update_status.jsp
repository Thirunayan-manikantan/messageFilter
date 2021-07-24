<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<%
try
{

String ses = (String) session.getAttribute("l1");
System.out.println("!!!!!!!!!!!!!!!!!!!!!!"+ses);
String stus = (String) session.getAttribute("str6");
System.out.println("!!!!!!!!!!!!!:::"+stus);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password"); 
Statement st = con.createStatement();

String sts ="update user_reg set status='"+stus+"' where user_reg_id='"+ses+"'"; 

int x = st.executeUpdate(sts);


if(x!=0)
{
response.sendRedirect("user_home.jsp");
}
else
{
    response.sendRedirect("user_home.jsp");
}

}

catch(Exception e)
{
out.print(e);

}

%>

</body>
</html>
