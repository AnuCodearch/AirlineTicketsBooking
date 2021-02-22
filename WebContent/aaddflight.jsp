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
<div class="hero-wrap js-fullheight" style="background-image: url('images/aeropaint.jpg');">

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
        </ul>
      </div>
    </div>
  </nav>
  
  
	<hr><br><br>
	<center>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="aupdateflights.jsp" style="color:black"><h6>UPDATE FLIGHT</h6></a>
          <li class="nav-item"><a href="aadminviewflights.jsp" style="color:black"><h6>SEE ALL FLIGHTS</h6></a></li>
        </ul>
	</center>
	<br><br>
	<center>
<h2>Add Flight</h2>
	<form action="aAdminservlet" method="post">
		Flight name	<input type="text" placeholder="flightname" name="flightname" required><br><br>
		From	<input type="text" placeholder="source" name="from" required>
		To	<input type="text" placeholder="destination" name="to" required><br><br>
		Date	<input type="date" placeholder="date" name="date" required><br><br>
		Arrival Time <input type="text" placeholder="atime" name="atime" required>
		Departure Time<input type="text" placeholder="dtime" name="dtime" required><br><br>
		Flight Charges <input type="text" placeholder="fare" name="fare" required>
		Seats <input type="text" placeholder="no. of seats" name="seat" required+><br><br>
		
		
		<input type="submit" name="submit" value="AddFlight">
		<br>
	</form>
	</center>
	<br><br><br><br><br><br><br><br>
</body>
</html>