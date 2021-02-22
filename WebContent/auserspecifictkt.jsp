<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="com.Bean.Userbean"%>
<%@page import="com.dao.Dao"%>
   <%       
            if(session.getAttribute("email")!=null) 
                    {
			String email=(String)session.getAttribute("email");
			%> 
		   <ul class="text-right" style="color:gray;margin-right:25px;">User: <%out.print(session.getAttribute("email"));%> </ul>
			
			
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		 <%Dao d=new Dao();
			d.makeConnection();
			String query="select * from bookedtickets";////////////auserviewflights
			Userbean userbean=new Userbean();
			//String flightname=(String)session.getAttribute("flightname");
			int i=d.book(query,userbean);
			ResultSet rs=d.adminviewflights();
			while(rs.next())
		{%>
<TABLE class="table table-bordered table-striped">
<h3>Your flights</h3>
           			 <tr class="danger">   
           				   <Th>Flight details</Th>
               			 	<TH>time</TH>
               			 	<TH>Cancel ticket</TH>
           				 </tr> 
           				<<tr class="danger">   
           				   <Td><%=rs.getString(2) %></Td>
               			 	<td><%=rs.getString(3) %></Td>
               			 	<Td><a href="acancelticket.jsp?email=<%=rs.getString(2)%>"><button>CANCEL</button></a></Td>
           				 </tr> 
           				  <tr class="danger">   
           				   <Td><%= rs.getString(2) %></Td>
               			 	<td><%= rs.getString(3) %></Td>
               			 	<Td><a href="acancelticket.jsp?email=<%=rs.getString(2)%>"><button>CANCEL</button></a></Td>
           				 </tr>  
</TABLE>
 <%}}else{response.sendRedirect("aindex.jsp");
	out.println("in userspecific");}%> 
</body>
</html>