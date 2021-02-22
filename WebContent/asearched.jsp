<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
     <%@page import="java.sql.Statement"%>
          <%@page import="java.sql.Connection"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>
</head>
<body>
<div class="hero-wrap js-fullheight" style="background-image: url('images/aero9.jpg');">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">Airplanes</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="aindex.jsp" class="nav-link">HOME</a></li>
          <li class="nav-item active"><a href="auserhome.jsp" class="nav-link">USER</a></li>
          <li class="nav-item"><a href="aadminlogin.jsp" class="nav-link">ADMIN</a></li>
          <li class="nav-item"><a href="aabout.jsp" class="nav-link">ABOUT</a></li>
          <!-- <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li> -->
        </ul>
      </div>
    </div>
  </nav>
	<hr>
   <br><br><br><br><br><br><br><br>
<center>
<TABLE class="table table-bordered table-striped" style="color:white;">
           				 <tr class="danger">   
           				   <Th>Flight name</Th>
               			 	<TH>time</TH>
               			 	<TH>fare</TH>
               			 	<TH>Book ticket</TH>
           				 </tr>
<%String afrom=request.getParameter("afrom"); 
try{Class.forName("com.mysql.jdbc.Driver");				  
Connection con=null;Statement st=null;ResultSet rs=null;
}catch(Exception e){System.out.println(e);}
%>
<%if(session.getAttribute("email")!=null) 
{out.println("User: "+session.getAttribute("email"));	}%>
<%	  
				try{
				Class.forName("com.mysql.jdbc.Driver");
				  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
           		 Statement st=con.createStatement();
           		 String sql="Select *from allflights where afrom like '"+afrom+"' ";
              	 ResultSet rs=st.executeQuery(sql);
				 while(rs.next())
            			 {
					 
        		%> 
        		<TR>
               		<TD style="color:white">  <%= rs.getString(1) %> </TD>
               		<TD style="color:white"> <%= rs.getString(4) %> </TD>
               		<TD style="color:white"> <%= rs.getString(7) %> </TD>         		
      		        <TD><a href="abookticket.jsp?flightname=<%= rs.getString(1) %>" class="btn btn-md btn-danger"><span style="color:white;">Book</span></a></td>
      		  <%}
		 
	}
catch(Exception e){System.out.println(e);}				

%>
            
      			</TR>
</TABLE>
      			<%-- <%else
      				response.sendRedirect("asearchflight.jsp");%>  --%>
</center>
 <br><br><br><br><br><br><br><br>
</body>
</html>