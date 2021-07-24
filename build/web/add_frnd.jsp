
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
int fa=0;
String fb=null,fc=null,fd=null,fe=null,ff=null,fg=null,fh=null,fi=null,fj=null,fk=null,fl=null,fm=null;

String fnm = request.getQueryString();




try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");
Statement st1 = con1.createStatement();
//String sql="select uid,name,userAES_DECRYPT(email,'key') from user";
String sss1 = "select * from user_reg where name='"+fnm+"'";

ResultSet rs1=st1.executeQuery(sss1);
if(rs1.next())
{
fa=rs1.getInt(1);
session.setAttribute("fa1",fa);
fb=rs1.getString(2);
session.setAttribute("fb1",fb);
fc=rs1.getString(3);
session.setAttribute("fc1",fc);
fd=rs1.getString(4);
session.setAttribute("fd1",fd);
fe=rs1.getString(5);
session.setAttribute("fe1",fe);
ff=rs1.getString(6);
session.setAttribute("ff1",ff);
fg=rs1.getString(7);
session.setAttribute("fg1",fg);
fh=rs1.getString(8);
session.setAttribute("fh1",fh);
fi=rs1.getString(9);
session.setAttribute("fi1",fi);
fj=rs1.getString(10);
session.setAttribute("fj1",fj);
fk=rs1.getString(11);
session.setAttribute("fk1",fk);
fl=rs1.getString(12);
session.setAttribute("fl1",fl);
fm=rs1.getString(13);
session.setAttribute("fm1",fm);

response.sendRedirect("add_frnd1.jsp");
}

}
catch(Exception  e1)
{
out.println(e1.getMessage());
}
%>
