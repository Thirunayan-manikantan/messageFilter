<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</title>
<style type="text/css">
.b
{
border:#000000;
border-size:1px;
}
</style>
</head>

<body>
<div id="container">
		<div id="mainpic">
        	<h1>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</h1>
            
        </div>   
        
        <div id="menu">
        	<ul>
            	<li class="menuitem"><a href="admin_home.jsp">Back</a></li>
               <!-- <li class="menuitem"><a href="#">About</a></li>
                <li class="menuitem"><a href="#">Products</a></li>
                <li class="menuitem"><a href="#">Services</a></li>
                <li class="menuitem"><a href="#">Design</a></li>
              <li class="menuitem"><a href="#">Contact</a></li>-->
            </ul>
        </div>
        
		<div id="content">
        	<h2>&nbsp; </h2>
       	  <h3>&nbsp;</h3>
		  
		  <table width="800">
			<tr>
			<td>
			<fieldset>
			<div style="overflow:scroll;">
			<table width="500" height="300" border="1" bordercolor="#333333"> 			
			<tr height="10%" bordercolor="#000000">
	
      <th width="150"> <font color="#FF00000"><em>Sno</em></font></th>
      <th width="150"> <font color="#FF0000"><em>Violence</em></font></th>
	  <th width="100"> <font color="#FF0000"><em>Vulgar</em></font></th>
      <th width="100"> <font color="#FF0000"><em>Offensive</em></font></th> 
	  <th width="250"> <font color="#FF0000"><em>Hate</em></font></th>
	  <th width="250"> <font color="#FF0000"><em>Sex</em></font></th>
	  <th width="100"> <font color="#FF0000"><em>Total</em></font></th>	  
	  <th width="100"> <font color="#FF0000"><em>Date & Time</em></font></th>
	  <th width="100"> <font color="#FF0000"><em>Graph</em></font></th>
			</tr>
			
			 <%

Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

int va1=0,vb1=0,vc1=0,vd1=0,ve1=0,vf1=0,vg1=0;
String vh1=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password"); 
st=con1.createStatement();

 String sqll=("select * from filter_avg");
 rs=st.executeQuery(sqll);
while(rs.next())
{

va1=rs.getInt(1);
vb1=rs.getInt(2);
vc1=rs.getInt(3);
vd1=rs.getInt(4);
ve1=rs.getInt(5);
vf1=rs.getInt(6);
vg1=rs.getInt(7);
vh1=rs.getString(8);



%>

<tr height="10%"> 
      <td height="5%"> <%=va1%> </td>
      <td height="5%"> <%=vb1%> </td>
      <td height="5%"> <%=vc1%> </td>
      <td height="5%"> <%=vd1%> </td>
      <td height="5%"> <%=ve1%> </td>
	  <td height="5%"> <%=vf1%> </td>
	  <td height="5%"> <%=vg1%> </td>
	  <td height="5%"> <%=vh1%> </td>
	  
	  
<%
%>
      <td height="5%"><a href="graph_filter_perf.jsp?<%=va1%>">Graph</a></td>
	  </tr>
			
		<%
	  
}
}
catch(Exception e)
{
out.print(e);
}
%>	

			</table>
			</div>
			</fieldset>
			<td>&nbsp;</td>
			</td>
			<td>
			<fieldset> 
			<table width="200" height="300" border="0">
			<tr>
			<td background="images/welcom.jpg">
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="view_user.jsp">View User</a></p><br />
			
	<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="filter_text.jsp">Add Filter Word</a></p><br />
			
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Filter Performance</a></p><br />
			
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin_reg.jsp">Admin Signup</a></p>
			</td>
			</tr>
			
			</table>
			</fieldset>
			</td>
			</tr>
			</table>
			
        	
			
            
            <div id="footer">
			 </div>
      </div>
   </div>
</body>
</html>
