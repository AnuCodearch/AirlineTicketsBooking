package com.Bean;

import java.sql.ResultSet;

import com.dao.Dao;

public class Userbean {

	private String name,email,password,address,dob,contact,gender;
	public String flightname,type,afrom,ato,adate,dtime,no,name2;
	public String from;
	
	public String getFrom() {
		return from;
	}
	
	public void setFrom(String from) {
		this.from=from;
	}

	public String getFlightname() {
		return flightname;
	}

	public void setFlightname(String flightname) {
		this.flightname = flightname;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAfrom() {
		return afrom;
	}

	public void setAfrom(String afrom) {
		this.afrom = afrom;
	}

	public String getAto() {
		return ato;
	}

	public void setAto(String ato) {
		this.ato = ato;
	}

	public String getAdate() {
		return adate;
	}

	public void setAdate(String adate) {
		this.adate = adate;
	}

	public String getDtime() {
		return dtime;
	}

	public void setDtime(String dtime) {
		this.dtime = dtime;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String id) {
		this.address = address;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	///////////////////////////////////insert method////////////////////
	public int insertData() 
	{
		String query="insert into userregister values(?,?,?,?,?,?,?)";
		Dao d=new Dao();
		d.makeConnection();	///////-------Db connection so dao obj created where makeConnection() defined
		
		int i=d.insertData(query,this);
		return i;
	}

	///////////////////////////////////userlogin method/////////////////////////////////////////////

	public String userlogin() {
		// TODO Auto-generated method stub
		
		String query="select * from userregister where email=? and password=?";
		Dao d=new Dao();
		d.makeConnection();
		
		String rs=d.userlogin(query,this);
		return rs;
	}
	
	///////////////////////////////////book method/////////////////////////////////////////////////
	public int book() 
	{
		String query="insert into bookedtickets values(?,?,?,?,?,?,?,?)";
		Dao d=new Dao();
		d.makeConnection();	///////----Db connection so dao obj created where makeConnection() defined
		System.out.println("connection has been done");
		int i=d.book(query,this);
		
		return i;
	}

	//////////////////////////////////////////retrieve method////////////////////////////////////////
	
	public String retrieve() {
		// TODO Auto-generated method stub
String query="select * from allflights where afrom=?";
Dao d=new Dao();
d.makeConnection();

String rs=d.retrieve(query,this);

return rs;
	}
	
}
