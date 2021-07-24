
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
try
{
String a = request.getParameter("wctry");
String b = request.getParameter("wrd");


Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");
Statement st = con1.createStatement();
String sss = "insert into filter_message(detail1,detail2) values('"+a+"','"+b+"')";
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