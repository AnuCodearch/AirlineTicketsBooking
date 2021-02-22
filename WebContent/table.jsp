<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.Dao"%>
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
	<div class="hero-wrap js-fullheight" style="background-image: url('images/aer.jpg');">

  
<hr>
  <%       
            if(session.getAttribute("email")!=null) 
                    {
			String email=(String)session.getAttribute("email");
			%>
			<ul class="text-right" style="color:white;margin-right:-150px;margin-top:-100px;">User: <%out.print(session.getAttribute("email"));%> </ul>
 
<br><br><br><br><br><br><br><br>

<center>
<TABLE class="table table-bordered table-striped" style="color:white;background-color:black;">
           				 <tr class="danger">   
           				   <Th>Name</Th>
               			 	<TH>Email</TH>
               			 	<TH>Address</TH>
               			 	<TH>Contact</TH>
               			 	<TH>Cancel</TH>
           				 </tr> 

				<%
				 Dao d=new Dao();
           		 d.makeConnection();
              	 ResultSet rs=d.mybookedTickets();
				 while(rs.next())
            			 {
        		%> 
        		<TR>
               		<TD style="color:white">  <%= rs.getString(1) %> </TD>
               		<TD style="color:white"> <%= rs.getString(2) %> </TD>
               		<TD style="color:white"> <%= rs.getString(3) %> </TD>    
               		<TD style="color:white"> <%= rs.getString(4) %> </TD>
               		<TD style="color:white"> <a href="#"><input type="submit" name="submit" value="cancel"></a></TD>
               		         		     		
      		  <%} }
 else
response.sendRedirect("aadminhome.jsp");%> 
            
      			</TR>
</TABLE><br>

</center>


<br><br><br><br><br><br><br><br>
</body>

</html>

 --%>









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
          <li class="nav-item" ><a href="aindex.jsp" class="nav-link"><b>HOME</b></a></li>
          <li class="nav-item active"><a href="auserlogin.jsp" class="nav-link"><b>USER</b></a></li>
          <li class="nav-item"><a href="aadminlogin.jsp" class="nav-link"><b>ADMIN</b></a></li>
          <li class="nav-item"><a href="aabout.jsp" class="nav-link"><b>ABOUT</b></a></li>
          <!-- <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li> -->
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
<h3 style="color:white"><strong>cancel Flights</strong></h3>
<TABLE class="table table-bordered table-striped" style="color:white;">
           				 <tr class="danger">   
           				   <Th><b>name</Th>
               			 	<TH>time</TH>
               			 	<TH>fare</TH>
               		 	<TH><center>cancel ticket</TH>
           				 </tr> 

				<%
				 Dao d=new Dao();
           		 d.makeConnection();
              	 ResultSet rs=d.mybookedTickets();
				 while(rs.next())
            			 {
        		%> 
        		<TR>
               		<TD style="color:white"><b>  <%= rs.getString(1) %> </TD>
               		<TD style="color:white"><b> <%= rs.getString(4) %> </TD>
               		<TD style="color:white"><b> <%= rs.getString(7) %> </TD>         		
               		<TD><center><a href="abookticket.jsp?flightname=<%= rs.getString(1) %>"><span style="color:white;" class="btn btn-danger">CANCEL</span></a></td>
     		  <%} } %> 
            
      			</TR><br><br><br>
</TABLE><a href="#"><input type="button" class="btn btn-md btn-danger" value="OK"></a>    
<br><br><br><br><br><br><br><br><br>
</form>
</center>
</div>
</body>
</html>