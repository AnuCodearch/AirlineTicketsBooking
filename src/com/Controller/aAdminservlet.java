package com.Controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.*;    
import javax.mail.internet.*;   

import com.Bean.Adminbean;
import com.Bean.Userbean;

/**
 * Servlet implementation class aAdminservlet
 */
@WebServlet("/aAdminservlet")
public class aAdminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public aAdminservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
    
    
    
    
    
    /**//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	response.setContentType("text/html");
    	PrintWriter out =response.getWriter();
    	
    	String to=request.getParameter("to");
    	String subject=request.getParameter("subject");
    	String msg=request.getParameter("msg");
    	
    	Mailer.send(to,subject,msg);
    	response.sendRedirect("asendmsg.jsp");
    	out.print("msg sent successfully");

    	out.close();
    }*/
    
    
    
    
    
    
    
    
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String btn=request.getParameter("submit");
		PrintWriter out=response.getWriter();
		
		
		if(btn.equals("Login"))
		{
			String id,password;
			//boolean login=false;
			System.out.println("in Administrator login servlet..");
			
			id=request.getParameter("id");
			password=request.getParameter("password");
		    System.out.println("id="+id+" password="+password);
			 
		   Adminbean bean=new Adminbean();
			bean.setId(id);
			bean.setPassword(password);
			
			
			boolean i;
			try{
				i = bean.adminlogin();
			
	
			
			if(i){	
				HttpSession session=request.getSession(true);
				session.setAttribute("id", id);
				
			  	out.println("<script type=\"text/javascript\">");
			       out.println("alert('Login SucessFul');");
			       out.println("location='aadminhome.jsp';");
			       out.println("</script>");	   
			}		    
			else{
				
				out.println("<script type=\"text/javascript\">");
			       out.println("alert('id or Password is incorrect');");
			       out.println("location='aadminlogin.jsp';");
			       out.println("</script>");
			}
			
			}catch(Exception e){System.out.println(e);}
			
		
		}
		
	
	
	
	
	/////////////////////////Mail////////////////////////////////
/*
		String butn=request.getParameter("submit");
	if(butn.equals("Send"))
	{	
		
	System.out.println("in mail process/////////////////////////");
	String mailtext=request.getParameter("mailtext");
    System.out.println("mailtext="+mailtext);
	 
	   Adminbean bean=new Adminbean();
	   bean.setMailtext(mailtext);		
		
		boolean i;
		try {
				// TODO Auto-generated method stub
				//i=	send("anubobhate@gmail.com","8485004902","anubobhate@gmail.com","hello javatpoint","How r u?");
			
			//if(i){response.sendRedirect("auserprofile.jsp");}
			//else{response.sendRedirect("asendmsg.jsp");}
			}
		catch(Exception e){System.out.println(e);}

	}*/

	/*private boolean send(String string, String string2, String string3,
			String string4, String string5) {
		// TODO Auto-generated method stub
		return false;
	}
	*/

	
	
	
	
	
	
	
	
	
/////////////////////////////////////////////////addflight////////////////////////////////////////////
String btn3=request.getParameter("submit");
if (btn3.equals("AddFlight"))
{
	String flightname,from,to,date,atime,dtime,fare,seat;
	System.out.println("in Add flight servelet..");
	flightname=request.getParameter("flightname");
	from=request.getParameter("from");
	to=request.getParameter("to");
	date=request.getParameter("date");
	atime=request.getParameter("atime");
	dtime=request.getParameter("dtime");
	fare=request.getParameter("fare");
	seat=request.getParameter("seat");
	
	Adminbean bean=new Adminbean();
	bean.setFlightname(flightname);
	bean.setFrom(from);
	bean.setTo(to);
	bean.setDate(date);
	bean.setAtime(atime);
	bean.setDtime(dtime);
	bean.setFare(fare);
	bean.setSeat(seat);
	
	int i=bean.insertFlight();
	if(i>0)
	{
		out.println("<script type=\"text/javascript\">");
        out.println("alert('Flight added///////');");
        out.println("location='aaddflight.jsp';");
        out.println("</script>");
	}
	else{
		out.println("<script type=\"text/javascript\">");
        out.println("alert('not added......');");
        out.println("location='addflight.jsp';");
        out.println("</script>");
	}
	
}
	
	
}}
