<!-- ////////////////////////////////----------------ADMIN SIDE---------------------------///////////////////////////////////////////////////// -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.Dao"%>
<%@ page import="java.sql.*" %>
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
	<div class="hero-wrap js-fullheight" style="background-image: url('images/aeo5.jpg');">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">Airplanes</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item "><a href="auserhome.jsp" class="nav-link" style="color:">HOME</a></li>
          <li class="nav-item"><a href="alogout.jsp" class="nav-link">LOGOUT</a></li>          
        </ul>
      </div>
    </div>
  </nav>
<hr>  
<hr>

<%
String email=request.getParameter("email");
try
{
	   Class.forName("com.mysql.jdbc.Driver");
	     System.out.println("driver loaded..");

	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
	   System.out.println("connection done..//");
	   System.out.println("email id is "+email);
	   
%>

<%if(session.getAttribute("Username")!=null) 
{System.out.print("email retrieval///////////");} %>

<%-- <ul class="text-right" style="color:white;margin-right:-150px;margin-top:-100px;">User: <%out.print(session.getAttribute("Username"));%> </ul>
 --%>

<br><br><br><br><br><br><br><br>

<center>
<b><h2 style="color:green;">Your booked tickets</h2></b>
<TABLE class="table table-bordered table-striped" style="color:white">
           				 <tr class="danger">   
           				   <Th>Name</Th>
               			 	<TH>Email</TH>
               			 	<TH>Address</TH>
               			 	<TH>Contact</TH>
               			 	<TH>dob</TH>
               			 	<TH>Cancel flight</TH>	 	
           				 </tr> 

				<%
				String sql="Select * from bookedTickets where email='"+email+"'";
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);

              	
				 while(rs.next())
            			 {				

					 %> 
        		<tr>
               		<td style="color:red"> <%=rs.getString(1) %> a</td>
               		<td style="color:red"> <%= rs.getString(8) %> a</td>
               		<td style="color:red"> <%= rs.getString(3) %> a</td>    
               		<td style="color:red"> <%= rs.getString(4) %> a</td>
               		<td style="color:red"> <%= rs.getString(5) %> a</td>
               		<td><a href="acancelticket.jsp?email=<%= rs.getString(8) %>"><span style="color:white;" class="btn btn-sm btn-danger">Cancel</span></a></td>
      		  <% }}catch(Exception e){System.out.print(e);}
 %> 
            
      			</tr>
</TABLE><br><a href="#"><input type="button" class="btn btn-md btn-danger" value="OK"></a> 
</form>
</center>


<br><br><br><br><br><br><br><br>
</body>

</html>