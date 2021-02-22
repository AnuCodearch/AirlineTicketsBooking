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
<div class="hero-wrap js-fullheight" style="background-image: url('images/aero14.jpg');">
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">Airplanes</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item" ><a href="auserhome.jsp" class="nav-link"><b>HOME</b></a></li>
          <li class="nav-item"><a href="auserprofile.jsp" class="nav-link"><b>PROFILE</b></a></li>
          <li class="nav-item"><a href="alogout.jsp" class="nav-link"><b>LOGOUT</b></a></li>
        </ul>
      </div>
    </div>
  </nav>

  
  <br><br>
  
  <div></div>
<hr>
 <%if(session.getAttribute("Username")!=null) out.println("Book tickets from here..");
 
 System.out.print("seeeeeeee"+session.getAttribute("Username"));
 
{%> 
<center>
<!-- aRegisterservlet bcz booking must be done from here too -->
<h3 style="color:white"><strong>View Flights</strong></h3>
<TABLE class="table table-bordered table-striped" style="color:white;">
           				 <tr class="danger">   
           				   <Th><b>Flight name</Th>
               			 	<TH>time</TH>
               			 	<TH>fare</TH>
               		 	<TH><center>Book ticket</TH>
           				 </tr> 

				<%
				 Dao d=new Dao();
           		 d.makeConnection();
              	 ResultSet rs=d.adminviewflights();
				 while(rs.next())
            			 {
        		%> 
        		<TR>
               		<TD style="color:white"><b>  <%= rs.getString(1) %> </TD>
               		<TD style="color:white"><b> <%= rs.getString(4) %> </TD>
               		<TD style="color:white"><b> <%= rs.getString(7) %> </TD>         		
               		<TD><center><a href="abookticket.jsp?flightname=<%= rs.getString(1) %>"><span style="color:white;" class="btn btn-danger">BOOK</span></a></td>
     		  <%} } %> 
            
      			</TR><br><br><br>
</TABLE>
<br><br><br><br><br><br><br><br><br>
</form>
</center>
</div>
</body>
</html>