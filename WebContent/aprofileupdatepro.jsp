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
String name = request.getParameter("name");
String email=request.getParameter("email");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String password=request.getParameter("password");
try
{
	   Class.forName("com.mysql.jdbc.Driver");
	     System.out.println("driver loaded..");

	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
	   System.out.println("connection done..");

String sql="Update userregister SET name=?,email=?,address=?,contact=?,dob=?,gender=?,password=? where email=?";
	

System.out.println(sql);
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,address);
ps.setString(4,contact);
ps.setString(5,dob);
ps.setString(6,gender);
ps.setString(7,password);
ps.setString(8,email);
int i=ps.executeUpdate();

if(i>0)
{
	//out.print("upadated....");
	out.println("<script type=\"text/javascript\">");
    out.println("alert('updated Successfully');");
    out.println("location='auserprofile.jsp';");
    out.println("</script>");
    
//	response.sendRedirect("auserprofile.jsp");

}
else
{
response.sendRedirect("aprofileupdate.jsp");
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