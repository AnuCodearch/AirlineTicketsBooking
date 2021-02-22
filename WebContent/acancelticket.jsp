<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%try{
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("driver loaded..");

   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
   System.out.println("connection done..");
   
   String email=request.getParameter("email");
   Statement st=con.createStatement();
   int i=st.executeUpdate("Delete from bookedTickets where email LIKE '"+email+"';");
   if(i>0)
   {
   response.sendRedirect("abooked.jsp");
   System.out.println("Cancelled...");
   }
   else{System.out.print("not cancelled************////");}
   con.close();
}

catch(Exception e)
{
	e.printStackTrace();
}
 %>
</body>
</html>