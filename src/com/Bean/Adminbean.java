package com.Bean;

import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.*;    
import javax.mail.internet.*;   

import com.dao.Dao;

public class Adminbean {
String id,password;
String flightname,from,to,date,atime,dtime,fare,seat;

public String getFlightname() {
	return flightname;
}

public void setFlightname(String flightname) {
	this.flightname = flightname;
}

public String getFrom() {
	return from;
}

public void setFrom(String from) {
	this.from = from;
}

public String getTo() {
	return to;
}

public void setTo(String to) {
	this.to = to;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

public String getAtime() {
	return atime;
}

public void setAtime(String atime) {
	this.atime = atime;
}

public String getDtime() {
	return dtime;
}

public void setDtime(String dtime) {
	this.dtime = dtime;
}

public String getFare() {
	return fare;
}

public void setFare(String fare) {
	this.fare = fare;
}

public String getSeat() {
	return seat;
}

public void setSeat(String seat) {
	this.seat = seat;
}


public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}





////////////////////////////////methods/////////////////////////////////
public boolean adminlogin() {
	// TODO Auto-generated method stub
	
String query="select * from  adminlogin where id='"+getId()+"' AND password='"+getPassword()+"'";
	Dao d=new Dao();
	d.makeConnection();
	ResultSet rs=d.adminlogin(query);
	 try
	 {
	   rs.next();
		
		 System.out.println("in administrator bean try");
		   if(getId().equals(rs.getString(1)) && getPassword().equals(rs.getString(2)))
		   {			 
			   return true;	   
		   }
	 }
	 catch(Exception e){
		 e.printStackTrace();
	 }
	
	return false;
}







//////////////////////////////////////////mailer//////////////////////////////////////////
public void send(String from, String password, String to,String sub,String msg)
{
	////getproperties object
	Properties prop=new Properties();
	prop.put("mail.smtp.host", "smtp.gmail.com");
	prop.put("mail.smtp.socketFactory.port", "465");
	prop.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");    
    prop.put("mail.smtp.auth", "true");    
    prop.put("mail.smtp.port", "465");    
   
    //getSession
    Session session=Session.getDefaultInstance(prop,    
            new javax.mail.Authenticator() {    
        protected PasswordAuthentication getPasswordAuthentication() {    
        return new PasswordAuthentication(from,password);  
        }    
       }); 
    
    
    //compose message    
      try {    
       MimeMessage message = new MimeMessage(session);    
       message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
       message.setSubject(sub);    
       message.setText(msg);    
       
    //sendmessage
       Transport.send(message);
       System.out.println("message sent successfully");
      }
      catch(Exception e){System.out.print(e);}
   
}







/////////////////////////////////////////////////insert flight///////////////////////////////////////////////////
public int insertFlight() {
	// TODO Auto-generated method stub
	String query="insert into allflights values(?,?,?,?,?,?,?,?)";
	Dao d=new Dao();
	d.makeConnection();	///////-------Db connection so dao obj created where makeConnection() defined
	
	int i=d.insertFlight(query,this);
	return i;
}

public ResultSet send() {
	// TODO Auto-generated method stub
	System.out.println("message sent successfully");
	ResultSet a = null;
	return a;
}

}





