<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>



<html>
<head>
</head>
<body>
<%

ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\Gallery");
		String paramname=null;
		String file=null;
		String a=null,b=null,c=null,d=null,e=null,f=null,g=null,h=null,i=null,j=null,k=null,l=null,img=null;
		String sts = "Hai Everybody";
		String z2 = (String) session.getAttribute("z1");
		//int count=0,buycount=0,rating=0,review=0;
		Connection con=null;		
		//name=(String)session.getAttribute("name");
		//email=(String)session.getAttribute("email");
		/*java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;*/
	
        
		
		  
	 
	 	
 
		File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("un"))
				{
					a=multi.getParameter(paramname);
					//System.out.println(a);
					
				}
				if(paramname.equalsIgnoreCase("gen"))
				{
					b=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("dob"))
				{
					c=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("mob"))
				{
					d=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("eid"))
				{
					e=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("ad"))
				{
					f=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("uid"))
				{
					g=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("pass"))
				{
					h=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("img"))
				{
					i=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("date"))
				{
					j=multi.getParameter(paramname);
				}
				
				}
					
			int p = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			p = 9;
			img = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\Gallery\\"+img);
                        System.out.println("Filepath: "+fPath);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        FileInputStream fs1 = null;
            //name=dirName+"\\Gallery\\"+image;
						
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password"); 

			PreparedStatement ps=con.prepareStatement("INSERT INTO user_reg(name,gen,dob,mobile,mail_id,address,user_id,pass,image,reg_date,user_reg_id,status) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
				
               	ps.setString(1,a);
				ps.setString(2,b);	
       			ps.setString(3,c);
       			ps.setString(4,d);
			    ps.setString(5,e);
			    ps.setString(6,f);
				ps.setString(7,g);
				ps.setString(8,h);
			    ps.setString(9,i);
				ps.setString(10,j);
			    ps.setString(11,z2);
			    ps.setString(12,sts);
			  
												
				
       if(p == 0)
			ps.setObject(9,null);
		else if(p == 9)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(9,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("registration_user.jsp?message=success");

			}
			else
			{
				response.sendRedirect("registration_user.jsp?message=fail");
			}
				
		} 
		catch (Exception ex) 
		{
			out.println(ex.getMessage());
		}
	
 %>
</body>
</html>