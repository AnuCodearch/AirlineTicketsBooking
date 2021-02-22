<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String flightname = request.getParameter("flightname");
String afrom=request.getParameter("afrom");
String ato=request.getParameter("ato");
String adate=request.getParameter("adate");
String atime=request.getParameter("atime");
String dtime=request.getParameter("dtime");
String fare=request.getParameter("fare");
String seat=request.getParameter("seat");
try
{
	   Class.forName("com.mysql.jdbc.Driver");
	     System.out.println("driver loaded..");

	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
	   System.out.println("connection done..");

String sql="Update allflights SET flightname=?,afrom=?,ato=?,adate=?,atime=?,dtime=?,fare=?,seat=? where flightname=?";
	

System.out.println(sql);
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,flightname);
ps.setString(2,afrom);
ps.setString(3,ato);
ps.setString(4,adate);
ps.setString(5,atime);
ps.setString(6,dtime);
ps.setString(7,fare);
ps.setString(8,seat);
ps.setString(9,flightname);
int i=ps.executeUpdate();

if(i>0)
{
	response.sendRedirect("aadminviewflights.jsp");
	out.print("upadated....");
}
else
{
response.sendRedirect("aupdateflights.jsp");
out.print("There is a problem in updating Record");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
 
%>
</body>
</html>