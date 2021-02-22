package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
//import java.util.Properties;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;







import com.Bean.Adminbean;
import com.Bean.Userbean;



public class Dao {

	Connection con=null;
//	private ResultSet rs;

	public   Connection makeConnection(){
 		try{
 		      Class.forName("com.mysql.jdbc.Driver");
 		      System.out.println("driver loaded..");
 		
 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
 		    System.out.println("connection done..");
 		}
 		
 		catch(Exception e)
 		{
 			e.printStackTrace();
 		}
 		return con;
}
/////////////////////////////////--------------insert users------------/////////////////////////////////////
	public int insertData(String query, Userbean bean) {
		// TODO Auto-generated method stub
		
		try{
			System.out.println("inserting..");
			PreparedStatement pst=con.prepareStatement(query); //////////-----inserting data using query
			pst.setString(1,bean.getName());
			pst.setString(2,bean.getEmail());
			pst.setString(3,bean.getAddress());
			pst.setString(4,bean.getContact());
			pst.setString(5, bean.getDob());
			pst.setString(6,bean.getGender());
			pst.setString(7,bean.getPassword());

			
			int i=pst.executeUpdate();
			return i;
			
		}catch(Exception e){
			e.printStackTrace();
		
		}
		
		return 0;
	}
/////////////////////////////////--------------user login-------------------/////////////////////////////////////
	public String userlogin(String query, Userbean bean) {
		// TODO Auto-generated method stub
		
		try{
			System.out.println(" User logging in..");
			String username=bean.getEmail();
			String password=bean.getPassword();
			System.out.println(username+" "+password);  ///////////////------ values get from getter setter 
		   
			PreparedStatement pst=con.prepareStatement(query);	///////////-----select query
			pst.setString(1,username);
			pst.setString(2,password);
			ResultSet rs=pst.executeQuery();
		   if(rs.next())
		   { 		   

			  String name=rs.getString(1);	
			  //String name=rs.getString();	

////////////----------name return for profile
			   return name;

		   }
		   
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
	}
///////////////////////////////-------------------select user----------------------///////////////////////////////////////
public ResultSet selectuser(String username) {
	ResultSet rs=null;
	System.out.println("name"+username);
	String sql = "Select * from userregister where email='"+username+"'";
	try {
		Statement stmt = con.createStatement();
	     rs = stmt.executeQuery(sql);
	
		}catch (Exception e) {
			e.printStackTrace();
		}
	return rs;
}

///////////////////////////////-------------------adminlogin----------------------///////////////////////////////////////
public ResultSet adminlogin(String query) {
	// TODO Auto-generated method stub
	
	ResultSet rs=null;
	try{
		System.out.println("in Administrator login Dao..");
		
	
		Statement st=con.createStatement();
	//	System.out.println(st);
	//	System.out.println("in  Admin login");
		rs=st.executeQuery(query);
		System.out.println("query="+rs);
	//   System.out.println("  1  Query done in login..");   
	}catch(Exception e){
		e.printStackTrace();
	}
	return rs;
}

////////////////////////////////---------see all users------------//////////////////////////////////////
public ResultSet selectAllUsers() {
	ResultSet rs=null;
	String sql = "Select * from userregister";
	try {
		Statement stmt = con.createStatement();
	     rs = stmt.executeQuery(sql);
	
		}catch (Exception e) {
			e.printStackTrace();
		}
	return rs;
}
////////////////////////////////-------------insert flights--------------//////////////////////////////////
public int insertFlight(String query, Adminbean bean) {
	// TODO Auto-generated method stub
	try{
		System.out.println("inserting..");
		PreparedStatement pst=con.prepareStatement(query); //////////-----inserting data using query
		pst.setString(1,bean.getFlightname());
		pst.setString(2,bean.getFrom());
		pst.setString(3,bean.getTo());
		pst.setString(4,bean.getDate());
		pst.setString(5, bean.getAtime());
		pst.setString(6,bean.getDtime());
		pst.setString(7,bean.getFare());
		pst.setString(8,bean.getSeat());

		
		int i=pst.executeUpdate();
		return i;
		
	}catch(Exception e){
		e.printStackTrace();
	
	}
	
	return 0;
}

/////////////////////////////////adminviewflight/////////////////////////////////////
public ResultSet aadminviewflights() {
	

	ResultSet rs=null;
	
	String sql = "Select *from allflights";
	try {
		Statement stmt = con.createStatement();
	      rs = stmt.executeQuery(sql);
	 
	
		}catch (Exception e) {
			e.printStackTrace();
		}
	return rs;
}

////////////////////////////////---------see booked users------------//////////////////////////////////////
public ResultSet selectbookedUsers() {
ResultSet rs=null;
String sql = "Select * from bookedtickets";
try {
Statement stmt = con.createStatement();
rs = stmt.executeQuery(sql);

}catch (Exception e) {
e.printStackTrace();
}
return rs;
}

////////////////////////////////---------see booked tickets (by user)------------//////////////////////////////////////
public ResultSet mybookedTickets() {
ResultSet rs=null;
String name2 = null;
String Username = null;
String sql = "Select * from bookedtickets where name like '"+Username+"'";
try {
Statement stmt = con.createStatement();
rs = stmt.executeQuery(sql);

}catch (Exception e) {
e.printStackTrace();
}
return rs;
}


////////////////////////////////////////sendmsg///////////////////////////////////////
public ResultSet send() {
	// TODO Auto-generated method stub
	System.out.println("message sent successfully");
	ResultSet a = null;
	return a;
}
//////////////////////////////////--------book------------//////////////////////////
public int book(String query, Userbean userbean) {
	// TODO Auto-generated method stub
	try{
		System.out.println("inserting..");
		PreparedStatement pst2=con.prepareStatement(query); //////////-----inserting data using query
		pst2.setString(1,userbean.getType());
		pst2.setString(2,userbean.getFlightname());
		pst2.setString(3,userbean.getAfrom());
		pst2.setString(4,userbean.getAto());
		pst2.setString(5,userbean.getAdate());
		pst2.setString(6,userbean.getDtime());
		pst2.setString(7,userbean.getNo());
		pst2.setString(8,userbean.getEmail());

		int rs=pst2.executeUpdate();
    	System.out.println(".............in abookservlet dao.............");
		return rs;
		
	}catch(Exception e){
		e.printStackTrace();
	
	}
	
	return 0;
}

////////////////////////////////////----------------retrieve-------------/////////////////////////////////////////
public String retrieve(String query, Userbean fbean) {
	// TODO Auto-generated method stub
	
	try{
		System.out.println(" User searching flights");
		String username=fbean.getEmail();
		String password=fbean.getPassword();
		System.out.println(username+" "+password+" "+"searching here"); ///////////////------ values get from getter setter 
	   
		PreparedStatement pst=con.prepareStatement(query);	///////////-----select query
		pst.setString(1,username);

		ResultSet rs=pst.executeQuery();
	   if(rs.next())
	   { 		   

		  String from=rs.getString(1);	
		  //String name=rs.getString();	

////////////----------name return for profile
		   return from;

	   }
	   
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return null;
}

}