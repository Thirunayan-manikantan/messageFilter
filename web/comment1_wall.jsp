

<%@page import="java.sql.*"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%
			String cimg = request.getQueryString();
  Connection con1 = null;
  PreparedStatement st = null;
  ResultSet rs = null;
  String  cma = null,cmc = null,cmd = null;
  Blob cmb = null;
  int cms=0;
  
  
  
  
	try
		{
		
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");   
		st = con.prepareStatement("select * from user_reg where user_reg_id='"+cimg+"'");
		rs = st.executeQuery();
		while(rs.next())
       	{
	   
	    
		   cms=rs.getInt(1);
		   cma=rs.getString(2);
		   session.setAttribute("cgnm",cma);
		   cmb=rs.getBlob(10);
		   cmd=rs.getString(12);
		   session.setAttribute("cgid",cmd);
		   cmc=rs.getString(13);


         %>	
		  <%
     
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <meta http-equiv="Refresh" content="5; url=user_home.jsp" />-->
<link rel="stylesheet" type="text/css" href="style.css" />
<title>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</title>
<script type="text/javascript">

function val4()
{
var a=document.f4.cmd.value;
if(a=="")
{
alert("Enter Your Comments ");
document.f4.cmd.focus();
return false;
}
}
</script>
</head>

<body>
<div id="container">
		<div id="mainpic">
        	<h1>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</h1>
            
        </div>   
        
        <div id="menu">
        	<!--<ul>
            	<li class="menuitem"><a href="#">Home</a></li>
                <li class="menuitem"><a href="#">About</a></li>
                <li class="menuitem"><a href="#">Products</a></li>
                <li class="menuitem"><a href="#">Services</a></li>
                <li class="menuitem"><a href="#">Design</a></li>
              <li class="menuitem"><a href="#">Contact</a></li>
            </ul>-->
        </div>
		<%
	
		Integer sn = (Integer) session.getAttribute("a1");
		String nme = (String) session.getAttribute("b1");
		String l2 = (String) session.getAttribute("l1");
		
		
		%>
        
		<div id="content">
        	<h2>&nbsp; </h2>
       	  <h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Mr/Miss <font color="#990066"> <%=cma%> </font>&nbsp;Welcome You to commet About HimSelf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; <a href="admin_log.jsp">Logout</a></h3>
		  
		  <table width="2%" height="0%">
			<td width="100%" height="42%"><tr>
			<td>
			<fieldset>
			<table width="500" height="380" border="0" style="border:solid 1px #003300">
			<tr height="30%">
			
		 <td width="25%"><p align="left"><img height="100" width="100" src="image.jsp?<%=cms%>"></p></td>
		 <td width="75%"><p align="center"><font color="#000099" size="3"><b><%=cmc%></b></font> </p></td>
        
		
			</tr>
			<tr height="70%">
			<td width="100%" colspan="2" >
			 <p><font color="#FF0000" size="2"><b>Friends On Comments</b></font></p>
			<%
			
//  Connection con1 = null;
  PreparedStatement st1 = null;
  ResultSet rs1 = null;
  String  gma = null,gmb = null,gmc = null,gmd = null,gme = null,gmf=null;
  
  
  
  
  
	try
		{
		
     //   con1 = databasecon.getconnection();  
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");
		st1 = con1.prepareStatement("select * from chat where getter_id='"+cimg+"'");
		rs1 = st1.executeQuery();
		while(rs1.next())
       	{
	   
	    
		   gma=rs1.getString(2);
		   gmb=rs1.getString(3);
		   gmc=rs1.getString(4);
		   gmd=rs1.getString(5);
		   gme=rs1.getString(6);
		   gmf=rs1.getString(7);


         %>	
		 <p align="center"><font color="#000099" size="3"><b><%=gma%></b></font> &nbsp;&nbsp;<%=gmf%> </p>
		  <%
     
	   }
	  
	 }
	   catch(Exception e21)
	   {
	     out.println(e21.getMessage());
	   }
	   
	    %>
				
			
			</td>
			
			
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			<td height="28%"></td>
			<td>
			<fieldset> 
			
			<table width="200" height="350" border="0">
			<tr height="30%">
			<td>
			<form name="f4" action="message_filt_rpy.jsp" method="post" onsubmit="return val4();">
	<p> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>&nbsp;&nbsp;Your Comments</b></font></p><br />
	<p> &nbsp;&nbsp;&nbsp;&nbsp;<textarea name="status"></textarea></p><br />
	<p align="center">
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="Submit"/> &nbsp;&nbsp;<input type="reset" name="clr" value="Reset"/></p>
	
	        </form>			
			</td>
			</tr>
		
			
			
			
			</table>
			</fieldset>
			</td>
			</tr>
		  </table>
			
        	
			<br />
			<br />
            
            <div id="footer">
		  </div>
      </div>
   </div>
</body>
</html>
