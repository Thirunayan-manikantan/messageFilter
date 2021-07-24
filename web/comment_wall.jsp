
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
int ca=0;
String cb=null,cc=null,cd=null,ce=null,cf=null,cg=null,ch=null,ci=null,cj=null,ck=null,cl=null,cm=null;
String uid = request.getQueryString();




try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");
Statement st1 = con1.createStatement();
//String sql="select uid,name,userAES_DECRYPT(email,'key') from user";
String sss1 = "select * from user_reg where user_reg_id='"+uid+"'";

ResultSet rs1=st1.executeQuery(sss1);
if(rs1.next())
{
ca=rs1.getInt(1);
session.setAttribute("ca1",ca);
cb=rs1.getString(2);
session.setAttribute("cb1",cb);
cc=rs1.getString(3);
session.setAttribute("cc1",cc);
cd=rs1.getString(4);
session.setAttribute("cd1",cd);
ce=rs1.getString(5);
session.setAttribute("ce1",ce);
cf=rs1.getString(6);
session.setAttribute("cf1",cf);
cg=rs1.getString(7);
session.setAttribute("cg1",cg);
ch=rs1.getString(8);
session.setAttribute("ch1",ch);
ci=rs1.getString(9);
session.setAttribute("ci1",ci);
cj=rs1.getString(10);
session.setAttribute("cj1",cj);
ck=rs1.getString(11);
session.setAttribute("ck1",ck);
cl=rs1.getString(12);
session.setAttribute("cl1",cl);
cm=rs1.getString(13);
session.setAttribute("cm1",cm);

response.sendRedirect("user_home.jsp?message=success");
}
else
{

response.sendRedirect("index.html?message=fail");
}
}
catch(Exception  e1)
{
out.println(e1.getMessage());
}
%>
