
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try
{
String a = request.getParameter("un");
String b = request.getParameter("gen");
String c = request.getParameter("dob");
String d = request.getParameter("mob");
String e = request.getParameter("eid");
String f = request.getParameter("ad");
String g = request.getParameter("uid");
String h = request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");
Statement st = con1.createStatement();
String sss = "insert into admin(name,gen,dob,mobile,email,address,uname,pass) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"')";
int x = st.executeUpdate(sss);


if(x!=0)
{



%>
<jsp:forward page="admin_home.jsp" />
<%
}

}

catch(Exception e)
{
out.print(e);

}

%>