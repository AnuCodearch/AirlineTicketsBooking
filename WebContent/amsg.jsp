 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="com.dao.Dao"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<%        
            if(session.getAttribute("Username")!=null) 
                    {
			String username=(String)session.getAttribute("Username");
			String msg=(String)session.getAttribute("Messagefromadmin");
			%>
			<%Dao d=new Dao();
			d.makeConnection();
			ResultSet rs=d.selectuser(username);
			while(rs.next())
		{%>
			<ul class="text-right" style="color:gray;margin-right:25px;">User: <%out.print(session.getAttribute("Username"));%> </ul>
		<%out.print(session.getAttribute(msg));%> 
           <%}}else
            	{response.sendRedirect("auserlogin.jsp");}
            %>
</body>
</html>