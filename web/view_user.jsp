

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
	
      <th width="150"> <font color="#FF00000"><em>Name</em></font></th>
      <th width="150"> <font color="#FF0000"><em>Gender</em></font></th>
	  <th width="100"> <font color="#FF0000"><em>DOB</em></font></th>
      <th width="100"> <font color="#FF0000"><em>Mobile No</em></font></th> 
	  <th width="250"> <font color="#FF0000"><em>Mail Id</em></font></th>
	  <th width="250"> <font color="#FF0000"><em>Address</em></font></th>
	  <th width="100"> <font color="#FF0000"><em>User Reg Id</em></font></th>	  
	  <th width="100"> <font color="#FF0000"><em>cmd</em></font></th>
			</tr>
			
			 <%


ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

String va=null,vb=null,vc=null,vd=null,ve=null,vf=null,vg=null,vh=null;

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");
st=con1.createStatement();

 String sqll=("select * from user_reg ");
 rs=st.executeQuery(sqll);
while(rs.next())
{

va=rs.getString(2);
vb=rs.getString(3);
vc=rs.getString(4);
vd=rs.getString(5);
ve=rs.getString(6);
vf=rs.getString(7);
vg=rs.getString(12);



%>

<tr height="90%"> 
      <td height="5%"> <%=va%> </td>
      <td height="5%"> <%=vb%> </td>
      <td height="5%"> <%=vc%> </td>
      <td height="5%"> <%=vd%> </td>
      <td height="5%"> <%=ve%> </td>
	  <td height="5%"> <%=vf%> </td>
	  <td height="5%"> <%=vg%> </td>
<%	 

%>
     <td><a href="#">View Chat</a></td>
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
			
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="filter_perf.jsp">Filter Performance</a></p><br />
			
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
