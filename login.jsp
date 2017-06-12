<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
 <%@ page import="java.util.Date" %>
  <%@  page import ="java.text.DateFormat" %>  
  <%@  page import="javax.servlet.http.HttpServletRequest" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
Date currentDate = new Date();  
String logdate = DateFormat.getInstance().format(currentDate);  
String ipAddress = request.getRemoteAddr();
String serverAddress = request.getLocalAddr();
/* out.println(logdate+"<br>"); 
out.println(ipAddress+"<br>");
out.println(serverAddress+"<br>"); */

%>


<%! String userdbName;
String userdbPsw;
String dbfullname;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/logindb";
String user = "root";
String dbpsw = "root";

String sql = "select * from userdetail where username=? and password=?";

String txtuname = request.getParameter("txtuname");
String txtpasswd = request.getParameter("txtpasswd");


if((!(txtuname.equals(null) || txtuname.equals("")) && !(txtpasswd.equals(null) || txtpasswd.equals(""))) )
{
	
	//String logindate = request.getParameter(logindate);
	try{
		Class.forName(driverName);
		con = DriverManager.getConnection(url, user, dbpsw);
		ps = con.prepareStatement(sql);
		ps.setString(1,txtuname);
		ps.setString(2,txtpasswd);
		
		rs = ps.executeQuery();
		if(rs.next())
		{			
			userdbName = rs.getString("username");
			userdbPsw = rs.getString("password");
			dbfullname = rs.getString("full_name");
			Blob dbprofile = rs.getBlob("profile");
			
			if(txtuname.equals(userdbName) && txtpasswd.equals(userdbPsw))
				{ 
				//Statement st =con.createStatement();  
		        
		        //st.executeUpdate("insert into userdetail set logindate = ? where username=? ");
		       
				
				  	session.setAttribute("username",userdbName);
					session.setAttribute("full_name", dbfullname);
					session.setAttribute("profile_pic", dbprofile);
					response.sendRedirect("Dashboard.jsp");
					
					
				}						   
		}
		else
		response.sendRedirect("error.jsp");
		rs.close();
		ps.close();				
		}
	catch(SQLException sqe)
	{
		out.println(sqe);
	}	
}
else
{
	%>
	
		<center><p style="color:red">Error In Login</p></center>
		<% 
	getServletContext().getRequestDispatcher("/home.jsp").include(request, response);
}

%>
</body>
</html>