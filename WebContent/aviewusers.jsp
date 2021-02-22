<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.Dao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div style="background-image: url('images/aero6.jpg');background-repeat:no-repeat;">
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">Airplanes</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item" ><a href="aadminhome.jsp" class="nav-link"><b>HOME</b></a></li>
          <li class="nav-item"><a href="alogout.jsp" class="nav-link"><b>LOGOUT</b></a></li>
          <!-- <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li> -->
        </ul>
      </div>
    </div>
  </nav>
  
<hr><br><br>
<ul>
<%if(session.getAttribute("id")!=null) 
{%>
<ul class="text-right" style="color:white;margin-right:25px;">Admin:  <%out.print(session.getAttribute("id"));%>
</ul> 
</ul><hr>
	 <center>
				<br><br><br><br>
				<h2 align="center" style="color:white;font-family:Cambria;font-size:25px;">Travellers' Data</h2>
				<br>
				
			    <form method="get" action="aAdminservlet">
                     
                	<TABLE class="table table-bordered table-striped" style="color:white">
           				 <tr class="danger">   
           				   <Th>Ticket no.</Th>
               			 	<TH>Name</TH>
               			 	<TH>E-mail id</TH>
                         	<TH>Date_of_birth</TH>                         	                         	
 							<TH >Contact </TH>
           				 </tr>          				
         				
				 <%
				 Dao d=new Dao();
           		 d.makeConnection();
              	 ResultSet rs=d.selectAllUsers();
				 while(rs.next())
            			 {
        		%> 
        		<TR>
               		<TD style="color:white">  <%= rs.getString(1) %> </TD>
               		<TD style="color:white"> <%= rs.getString(2) %> </TD>
               		<TD style="color:white"> <%= rs.getString(5) %> </TD>
               		<TD style="color:white"> <%= rs.getString(4) %> </TD>               		
               		<TD><a href="adeleteuser.jsp?email=<%= rs.getString(2) %>"><span style="color:white;" class="btn btn-sm btn-danger">Delete</span></a></td>
      		  <%} } %>
            
      			</TR>
         </TABLE>  
         <br><br><br><br><br><br><br>                                                                                                  
     </form>               
</body>
</html>