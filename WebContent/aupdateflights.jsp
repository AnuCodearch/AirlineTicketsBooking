<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.dao.Dao"%>

 <%  try{ 
	     Class.forName("com.mysql.jdbc.Driver");
	     System.out.println("driver loaded..");
	 	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
	     System.out.println("connection done..");
	   
	   Statement st=con.createStatement();
	   String flightname = request.getParameter("flightname");
	   String sql="SELECT * FROM allflights where flightname like '"+flightname+"'";
	   
	   ResultSet rs=st.executeQuery(sql);
	  while(rs.next()){ %>
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
<title>updation</title>
</head>
<body>
<div style="background-image: url('images/aeropaint.jpg');background-repeat:no-repeat;"></div>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">Airplanes</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item" ><a href="aadminhome.jsp" class="nav-link"><b>HOME</b></a></li>
          <li class="nav-item "><a href="alogout.jsp" class="nav-link"><b>LOGOUT</b></a></li>
        </ul>
     </div>
  </nav>
<h2>Update Flight</h2>
<hr><br>
	<div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="aaddflight.jsp" style="color:black"><h6>ADD FLIGHT</h6></a>
          <li class="nav-item"><a href="aadminviewflights.jsp" style="color:black"><h6>SEE ALL FLIGHTS</h6></a></li>
        </ul>
      </div>
<br>
<h2>Update Flight</h2>
	<form method="post" action="aupdateproflight.jsp" >
		Flight name	<input type="text" name="flightname" value="<%=rs.getString(1) %>"><br><br>
		From	<input type="text" value="<%=rs.getString(2) %>" name="afrom">
		To	<input type="text" value="<%=rs.getString(3) %>" name="ato"><br><br>
		Date	<input type="date" value="<%=rs.getString(4) %>" name="adate"><br><br>
		Arrival Time <input type="text" value="<%=rs.getString(5) %>" name="atime">
		Departure Time<input type="text" value="<%=rs.getString(6) %>" name="dtime"><br><br>
		Flight Charges <input type="text" value="<%=rs.getString(7) %>" name="fare">
		Seats <input type="text" value="<%=rs.getString(8) %>" name="seat"><br><br>
		
		
		<input type="submit" value="submit" name="submit">	
		<br>
	</form>
 <%} } catch(Exception e){e.printStackTrace();}  %>

<br><br><br><br><br><br><br><br><br>
</body>
</html>
