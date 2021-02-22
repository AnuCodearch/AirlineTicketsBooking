
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
@WebServlet("/StopSearch")
public class StopSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StopSearch() {
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
		
		if(btn.equals("SearchFlights"))
		{
        	String from=request.getParameter("from");
        	Userbean fbean=new Userbean();   ////////////------object create to access current values      
        	fbean.setFrom(from);        	
        	String i=fbean.retrieve();
        	   
		}
		
		
		
		
	}

}
