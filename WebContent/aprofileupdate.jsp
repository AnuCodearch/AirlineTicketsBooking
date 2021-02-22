<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%try
	{
	Class.forName("com.mysql.jdbc.Driver");
    System.out.println("driver loaded..");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
    System.out.println("connection done..");
    
       Statement st=con.createStatement();
	   String email = request.getParameter("email");
	   String sql="SELECT * FROM userregister where email like '"+email+"'";
	   
	   ResultSet rs=st.executeQuery(sql);
		  while(rs.next()){ %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"11>
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
<body style="color:white">
<div style="background-image: url('images/aero12.jpg');background-repeat:no-repeat;width:100%;">
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
  
	<center><br>
				<form action="aprofileupdatepro.jsp" method="post">
					<h3 style="color:#dc3545">Update your profile</h3>
					<br>
									
						<input type="text" placeholder="name" class="form-control col-lg-3" name="name" value="<%=rs.getString(1) %>" required><br>
						
						<input type="text" placeholder="email" class="form-control col-lg-3" name="email" value="<%=rs.getString(2) %>" required>
						<br>
						
						<input type="text" placeholder="address" class="form-control col-lg-3" name="address" value="<%=rs.getString(3) %>" required><br>
						
						
						<input type="number" placeholder="contact" class="form-control col-lg-3" pattern="[789][0-9]{10}" name="contact" value="<%=rs.getString(4) %>"> <br>
						
						
						<input type="date" placeholder="dob" class="form-control col-lg-3" name="dob" value="<%=rs.getString(5) %>"><br>
							
												
						<input type="text" placeholder="gender" class="form-control col-lg-3" name="gender" value="<%=rs.getString(6) %>"><br>
						
						
						<input type="password" placeholder="password" class="form-control col-lg-3" name="password" value="<%=rs.getString(7) %>" required><br>
						
						<br>
						<br>
						<input type="submit" value="submit" name="submit" class="btn btn-danger btn-lg btn-block col-lg-2"/>
						
				</form>
		</center>
		 <%} } catch(Exception e){e.printStackTrace();}  %>
		
</body>
</html>