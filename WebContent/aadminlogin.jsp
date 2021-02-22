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
<div style="background-image: url('images/admin.png');background-repeat:no-repeat;">
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">Airplanes</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item" ><a href="aindex.jsp" class="nav-link" style="color:black"><b>HOME</b></a></li>
          <li class="nav-item"><a href="aadminlogin.jsp" class="nav-link" style="color:black"><b>ADMIN</b></a></li>
          <li class="nav-item"><a href="aabout.jsp" class="nav-link" style="color:black"><b>ABOUT</b></a></li>
          <!-- <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li> -->
        </ul>
      </div>
    </div>
  </nav>
  
	<hr>
<center>
<form action="aAdminservlet" method="post">
					<br><br><br><br><br><br>
					
				<h3 style="color:black">Admin Login</h3><br>
						<input type="text" placeholder="id" class="form-control col-lg-3" name="id"><br><br>
					
						<input type="password" placeholder="password" class="form-control col-lg-3" name="password"><br><br>
				
					    <input type="submit" value="Login" name="submit" class="btn btn-danger btn-lg btn-block col-lg-3">
				<br><br><br><br><br><br>
					<br><br>
				</form>
</center><hr>
</body>
</html>