

<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <meta http-equiv="Refresh" content="5; url=user_home.jsp" />-->
<link rel="stylesheet" type="text/css" href="style.css" />
<title>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</title>
<script type="text/javascript">
function val2()
{
var a=document.f2.status.value;
if(a=="")
{
alert("Enter Your Status Here");
document.f2.status.focus();
return false;
}
}
</script>
<script type="text/javascript">
function val3()
{
var b=document.f3.imag.value;
if(b=="")
{
alert("Selece Your Profile Image");
document.f3.imag.focus();
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
		String m2 = (String) session.getAttribute("m1");
		
		
		%>
        
		<div id="content">
        	<h2>&nbsp; </h2>
       	  <h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Welcome : <%=nme%> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;   &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="index.jsp">Logout</a></h3>
		  
		  <table width="2%" height="0%">
			<td width="100%" height="42%"><tr>
			<td>
			<fieldset>
			<table width="500" height="380" border="0">
			<tr height="30%">
			<%
  //Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;
  String  bm = null,cm = null,dm = null,em = null,fm=null;
  Blob gm=null;
  int am = 0;
  
  
  
	try
		{
		
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");   
		st = con1.prepareStatement("select * from user_reg where sno='"+sn+"'");
		rs = st.executeQuery();
		while(rs.next())
       	{
	   
	    
		   am=rs.getInt(1);
		   bm=rs.getString(2);
		   cm=rs.getString(3);
		   dm=rs.getString(4);
		   em=rs.getString(5);
		   fm=rs.getString(6);
		   gm=rs.getBlob(10);


         %>	
		 <td width="25%">
		 <p align="left"><img height="100" width="100" src="image.jsp?<%=am%>"></p>	
		
		 </td>
		 <td width="75%"><p align="center"><font color="#000099" size="3"><b><%=m2%></b></font> </p></td>
         <%
     
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    %>
		
			</tr>
			<tr height="70%">
			<td width="25%" >
			 <p><font color="#FF0000" size="2"><b>Friends On Chat</b></font></p>
			 &nbsp;&nbsp;
			
			<%
  //Connection con2 = null;
  PreparedStatement st2 = null;
  ResultSet rs2 = null;
  String  cf = null,cf1 = null;
  
  
  
  
  
	try
		{
	Class.forName("com.mysql.jdbc.Driver");	
        Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");   
   
		st2 = con2.prepareStatement("select * from friends where sender='"+nme+"'");
		rs2 = st2.executeQuery();
		while(rs2.next())
       	{
	   
	    
		  
		   cf=rs2.getString(4);
		    cf1=rs2.getString(5);
			//session.setAttribute("cf2",cf1);
		  
		   
            

         %>	
		
			
		    <p align="center"><font color="#000099" size="3"><%=cf%></font>&nbsp;&nbsp;<a href="comment1_wall.jsp?<%=cf1%>" target="_blank">Comment</a> </p>			
		  
			
         <%
     
	
	 
	   }
	  
	 }
	   catch(Exception e21)
	   {
	     out.println(e21.getMessage());
	   }
	   
	    %>
	
			
			</td>
			
			<td width="75%" >
			<div style="overflow:scroll;">
			<p><font color="#9900CC" size="2"><b>Friends Comments</b></font></p>
			
			<%
			
  //Connection con3 = null;
  //PreparedStatement st3 = null;
  //ResultSet rs3 = null;
  String  gma = null,gmb = null,gmc = null,gmd = null,gme = null,gmf=null;
  int gsn=0;
  
  
  
  
	try
		{
	Class.forName("com.mysql.jdbc.Driver");	
        Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");  
   
		PreparedStatement st3 = con3.prepareStatement("select * from chat where getter_id='"+l2+"'");
		ResultSet rs3 = st3.executeQuery();
		while(rs3.next())
       	{
	   
	       gsn=rs3.getInt(1);
		   gma=rs3.getString(2);
		   gmb=rs3.getString(3);
		   gmc=rs3.getString(4);
		   gmd=rs3.getString(5);
		   gme=rs3.getString(6);
		   gmf=rs3.getString(7);


         %>	
		 
		 <p align="center"><font color="#000099" size="3"><b><%=gma%></b></font> &nbsp;&nbsp;<%=gmf%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="comment1_wall.jsp?<%=gmb%>" target="_blank">Reply</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="delete.jsp?<%=gsn%>">Delete</a> </p>
		 <br />
		  <%
     
	   }
	  
	 }
	   catch(Exception e31)
	   {
	     out.println(e31.getMessage());
	   }
	   
	    %>
				
			
			
				</div>
			
			</td>
		
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			<td height="28%"></td>
			<td>
			<fieldset> 
			<marquee>If You Are Going Change Your Status and Profile Image Means, You will be Advis to Login Again</marquee>
			<table width="200" height="350" border="0">
			<tr height="30%">
			<td>
			<form name="f2" action="message_filter.jsp" method="post" onsubmit="return val2()">
	<p> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update Status</b></font></p>
	<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="status"/></p>
	
	<br />
	
	<p align="center">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="Submit" /> &nbsp;&nbsp;<input type="reset" name="clr" value="Reset" /></p>
	</form>
	<p>--------------------------------------------------------------</p>
	<form name="f3" action="update_profile_image.jsp" method="post" onsubmit="return val3();" enctype="multipart/form-data">
	<p> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>&nbsp;Change Profile Image</b></font></p>
	<p><input type="file" name="imag"/></p>
	
	<br />
	
	<p align="center">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="Submit" /> &nbsp;&nbsp;<input type="reset" name="clr" value="Reset" /></p>
	</form>
			
			</td>
			</tr>
		
			
			
			<tr height="25%">
		
		 <td width="10">
		 <div style="overflow:scroll;">
		 <p>------------------------------------------------------------</p>	
	<p><blink><font color="#FF3399" size="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;People You May To Know</b></font></blink></p>&nbsp;&nbsp;
			<%
  Connection con1 = null;
  PreparedStatement st1 = null;
  ResultSet rs1 = null;
  String  cm1 = null;
  
  
  
  
  
	try
		{
		
        con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password"); 
   
		st1 = con1.prepareStatement("select * from user_reg");
		rs1 = st1.executeQuery();
		while(rs1.next())
       	{
	   
	    
		  
		   cm1=rs1.getString("name");
		  if(!(cm1.equals(nme)))
		   {
		   
            

         %>	
		
		 		 
		    <p><font color="#000099" size="3"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=cm1%></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="add_frnd.jsp?<%=cm1%>">Add Friend</a> </p>			
		  
			
         <%
     
	 }
	 
	   }
	  
	 }
	   catch(Exception e21)
	   {
	     out.println(e21.getMessage());
	   }
	   
	    %>
	
	</div>
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
