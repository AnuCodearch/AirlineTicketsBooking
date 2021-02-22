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
    <link rel="stylesheet" href="css/mystyle.css">
<title>Insert title here</title>
</head>
<body>
<div class="hero-wrap js-fullheight" style="background-image: url('images/aero15.jpg');">
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
  
  
<h6 style="color:black;">Welcome to online booking service </h6>
<br><br><br><br>
<center>

<div class="book-form form-group" style="margin-left:20%;"></div>
<form action="abookservlet" method="post" style="color:white;position:relative;" class="form-horizontal">
		<br><br><h3 style="color:white;">Ticket booking form</h3><br><br>
		Journey Type	:<input type="radio" name="type" value="a"> One way
						 <input type="radio" name="type" value="b"> Return<br><br>
		Flight name	<input type="text" placeholder="flightname" name="flightname" required><br><br>
		From	<input type="text" placeholder="source" name="afrom" required>
		To	<input type="text" placeholder="destination.." name="ato" required><br><br>
		Date	<input type="date" placeholder="date.." name="adate" required>
		Departure Time<input type="text" placeholder="dtime" name="dtime" required><br><br>
		Travellers	<input type="text" placeholder="no. of travellers" name="no"  required><br><br>
		email	<input type="text" placeholder="email" name="email"  required><br><br>
		
		<!-- Class	<select><option>Economy</option><option>Business</option></select>	<br><br>	 -->
		<br>
		<input type="submit" name="submit" value="BookNow" >
		<input type="reset" value="Reset"><br><br>	
		
		<%		 Dao d=new Dao();
           		 d.makeConnection();
              	 ResultSet rs=d.selectbookedUsers();  			 
        		%> 
			<TD><a href="abooked.jsp?email"><span class="btn btn-warning btn-sm">emailchor</span></a></td>
		<br>
	</form>
</div>

<br><br><br>
</center>
</body>
</html>