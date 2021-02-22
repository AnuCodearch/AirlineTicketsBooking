package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Userbean;

/**
 * Servlet implementation class abookservlet
 */
@WebServlet("/abookservlet")
public class abookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public abookservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String btn=request.getParameter("submit");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();

		if(btn.equals("BookNow"))
		{ 	String type=request.getParameter("type");
        	String flightname=request.getParameter("flightname");
        	String afrom=request.getParameter("afrom");
        	String ato=request.getParameter("ato");
        	String adate=request.getParameter("adate");
        	String dtime=request.getParameter("dtime");
        	String no=request.getParameter("no");
        	String email=request.getParameter("email");

        	Userbean userbean=new Userbean();
        	userbean.setType(type);
        	userbean.setFlightname(flightname);
        	userbean.setAfrom(afrom);
        	userbean.setAto(ato);
        	userbean.setAdate(adate);
        	userbean.setDtime(dtime);
        	userbean.setNo(no);
        	userbean.setEmail(email);

        	int i=userbean.book();

        	if(i>0)
        	{
        		out.println("<script type=\"text/javascript\">");
                out.println("alert('booked Successfully.....');");
                out.println("location='auserprofile.jsp';");
                out.println("</script>");
        	}
        	else{
        		out.println("<script type=\"text/javascript\">");
        		out.println("alert('booking failed....');");
                out.println("location='auserviewflights.jsp';");
                out.println("</script>");
        	}

		}
		
		
		
		
		
		
		if(btn.equals("cancel"))
		{ 	String name = request.getParameter("name");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		try
		{
			   try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			     System.out.println("driver loaded..");

			  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines", "root", "root");
			   System.out.println("connection done..");
			   boolean flag;
		String sql="Update bookedTickets SET flag=1 where email=?";
			

		System.out.println(sql);
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setBoolean(1,true);
		ps.setString(2,email);
		/*ps.setString(3,address);
		ps.setString(4,contact);
		ps.setString(5,dob);
		ps.setString(6,gender);
		ps.setString(7,password);
		ps.setString(8,email);*/
		int i=ps.executeUpdate();

		if(i>0)
		{
			//out.print("upadated....");
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('updated Successfully');");
		    out.println("location='acancelticket.jsp';");
		    out.println("</script>");
		    
//			response.sendRedirect("auserprofile.jsp");

		}
		else
		{
		response.sendRedirect("aprofileupdate.jsp");
		out.print("There is a problem in updating Record");
		} 
		}
		catch(SQLException sql)
		{
		request.setAttribute("error", sql);
		out.println(sql);
		}
		 

		}
		
		
	}

}
