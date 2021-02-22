
package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.Userbean;

/**
 * Servlet implementation class Registerservlet
 */
@WebServlet("/aRegisterservlet")
public class aRegisterservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public aRegisterservlet() {
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
		
		if(btn.equals("SignUp"))
		{
        	String name=request.getParameter("name");
        	String email=request.getParameter("email");
			String address=request.getParameter("address");
        	String contact=request.getParameter("contact");
        	String dob=request.getParameter("dob");
        	String gender=request.getParameter("gender");
        	String password=request.getParameter("password");
        	
        	Userbean bean=new Userbean();   ////////////------object create to access current values
       
        	bean.setName(name);
        	bean.setEmail(email);
        	bean.setAddress(address);
        	bean.setContact(contact);
        	bean.setDob(dob);
        	bean.setGender(gender);
        	bean.setPassword(password);
        	
        	int i=bean.insertData();
        	
        	if(i>0)
        	{
        		out.println("<script type=\"text/javascript\">");
                out.println("alert('registration Successful');");
                out.println("location='auserlogin.jsp';");
                out.println("</script>");
        	}
        	else{
        		out.println("<script type=\"text/javascript\">");
               // out.println("alert('registration failed');");
                out.println("location='aregister.jsp';");
                out.println("</script>");
        	}
		}
		
		if(btn.equals("Login"))
		{
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			Userbean bean=new Userbean();
			bean.setEmail(email);
			bean.setPassword(password);
			
			String i=bean.userlogin();
			
			if(i!=null){
        		HttpSession session=request.getSession(true);
        		session.setAttribute("Name", i);
        		session.setAttribute("Username","" +email); ////////---------- displaying name in profile
        		
        		out.println("<script type=\"text/javascript\">");
        	    out.println("alert('Login Successfully');");
        	    out.println("location='auserhome.jsp';");
        	    out.println("</script>");
        		}
        	else{
        		
        		out.println("<script type=\"text/javascript\">");
        	    out.println("alert('Email and Password is incorrect');");
        	    out.println("location='auserlogin.jsp';");
        	    out.println("</script>");
        		}
		}
		
		
	}

}
