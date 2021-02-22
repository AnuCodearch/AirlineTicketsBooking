package com.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Userbean;
import com.dao.Dao;

/**
 * Servlet implementation class Stopwordservlet
 */
@WebServlet("/Stopwordservlet")
public class Stopwordservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /*
     * @see HttpServlet#HttpServlet()
     */
    public Stopwordservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("submit");
		
if(btn.equals("SearchFlights")) {{{
	 
	

	
	String[] stopWordsofwordnet = {
	/*“without”, “see”, “unless”, “due”, “also”, “must”, “might”, “like”, “]”, “[“, “}”, “{“, “<“, “>”, “?”, “\””, “\\”, “/”, “)”, “(“, “will”, “may”, “can”, “much”, “every”, “the”, “in”, “other”, “this”, “the”, “many”, “any”, “an”, “or”, “for”, “in”, “an”, “an “, “is”, “a”, “about”, “above”, “after”, “again”, “against”, “all”, “am”, “an”, “and”, “any”, “are”, “aren’t”, “as”, “at”, “be”, “because”, “been”, “before”, “being”, “below”, “between”, “both”, “but”, “by”, “can’t”, “cannot”, “could”,
	“couldn’t”, “did”, “didn’t”, “do”, “does”, “doesn’t”, “doing”, “don’t”, “down”, “during”, “each”, “few”, “for”, “from”, “further”, “had”, “hadn’t”, “has”, “hasn’t”, “have”, “haven’t”, “having”,
	“he”, “he’d”, “he’ll”, “he’s”, “her”, “here”, “here’s”, “hers”, “herself”, “him”, “himself”, “his”, “how”, “how’s”, “i “, ” i”, “i’d”, “i’ll”, “i’m”, “i’ve”, “if”, “in”, “into”, “is”,
	“isn’t”, “it”, “it’s”, “its”, “itself”, “let’s”, “me”, “more”, “most”, “mustn’t”, “my”, “myself”, “no”, “nor”, “not”, “of”, “off”, “on”, “once”, “only”, “ought”, “our”, “ours”, “ourselves”,
	“out”, “over”, “own”, “same”, “shan’t”, “she”, “she’d”, “she’ll”, “she’s”, “should”, “shouldn’t”, “so”, “some”, “such”, “than”,
	“that”, “that’s”, “their”, “theirs”, “them”, “themselves”, “then”, “there”, “there’s”, “these”, “they”, “they’d”, “they’ll”, “they’re”, “they’ve”,
	“this”, “those”, “through”, “to”, “too”, “under”, “until”, “up”, “very”, “was”, “wasn’t”, “we”, “we’d”, “we’ll”, “we’re”, “we’ve”,
	“were”, “weren’t”, “what”, “what’s”, “when”, “when’s”, “where”, “where’s”, “which”, “while”, “who”, “who’s”, “whom”,
	“why”, “why’s”, “with”, “won’t”, “would”, “wouldn’t”, “you”, “you’d”, “you’ll”, “you’re”, “you’ve”, “your”, “yours”, “yourself”, “yourselves”,
	“Without”, “See”, “Unless”, “Due”, “Also”, “Must”, “Might”, “Like”, “Will”, “May”, “Can”, “Much”, “Every”, “The”, “In”, “Other”, “This”, “The”, “Many”, “Any”, “An”, “Or”, “For”, “In”, “An”, “An “, “Is”, “A”, “About”, “Above”, “After”, “Again”, “Against”, “All”, “Am”, “An”, “And”, “Any”, “Are”, “Aren’t”, “As”, “At”, “Be”, “Because”, “Been”, “Before”, “Being”, “Below”, “Between”, “Both”, “But”, “By”, “Can’t”, “Cannot”, “Could”,
	“Couldn’t”, “Did”, “Didn’t”, “Do”, “Does”, “Doesn’t”, “Doing”, “Don’t”, “Down”, “During”, “Each”, “Few”, “For”, “From”, “Further”, “Had”, “Hadn’t”, “Has”, “Hasn’t”, “Have”, “Haven’t”, “Having”,
	“He”, “He’d”, “He’ll”, “He’s”, “Her”, “Here”, “Here’s”, “Hers”, “Herself”, “Him”, “Himself”, “His”, “How”, “How’s”, “I “, ” I”, “I’d”, “I’ll”, “I’m”, “I’ve”, “If”, “In”, “Into”, “Is”,
	“Isn’t”, “It”, “It’s”, “Its”, “Itself”, “Let’s”, “Me”, “More”, “Most”, “Mustn’t”, “My”, “Myself”, “No”, “Nor”, “Not”, “Of”, “Off”, “On”, “Once”, “Only”, “Ought”, “Our”, “Ours”, “Ourselves”,
	“Out”, “Over”, “Own”, “Same”, “Shan’t”, “She”, “She’d”, “She’ll”, “She’s”, “Should”, “Shouldn’t”, “So”, “Some”, “Such”, “Than”,
	“That”, “That’s”, “Their”, “Theirs”, “Them”, “Themselves”, “Then”, “There”, “There’s”, “These”, “They”, “They’d”, “They’ll”, “They’re”, “They’ve”,
	“This”, “Those”, “Through”, “To”, “Too”, “Under”, “Until”, “Up”, “Very”, “Was”, “Wasn’t”, “We”, “We’d”, “We’ll”, “We’re”, “We’ve”,
	“Were”, “Weren’t”, “What”, “What’s”, “When”, “When’s”, “Where”, “Where’s”, “Which”, “While”, “Who”, “Who’s”, “Whom”,
	“Why”, “Why’s”, “With”, “Won’t”, “Would”, “Wouldn’t”, “You”, “You’d”, “You’ll”, “You’re”, “You’ve”, “Your”, “Yours”, “Yourself”, “Yourselves”*/
	
	"this","is","Contains","the","string"
	};

	ArrayList<String> wordsList = new ArrayList<String>();
	//public static void main(String args[]) {
	String s="This STRING Contains the stop words like is am are so this program will remove all of them at your will thanks to you for watching this tutorial";
	s=s.trim().toLowerCase().replaceAll("\\s+", " ");
	String[] words = s.split(" ");

	for (String word : words) {
	wordsList.add(word);
	}
	
	//remove stop words here from the temp list
	for (int i = 0; i < wordsList.size(); i++) {
	// get the item as string
	for (int j = 0; j < stopWordsofwordnet.length; j++) {
	if (stopWordsofwordnet[j].contains(wordsList.get(i))) {
	wordsList.remove(i);
	}
	}
	}
	for (String str : wordsList) {
	out.print(str+" ");
	}
	}

	}}
		/*class stopWords{

		    public ResultSet stopClass1(){
		        String[] stopWords={"i", "anger", "about","an","are","as","at","be","by","com","for","like","from","how","in", "is","it",
		                "of","on","or","that","the","this","to","was","what","when","where","who","will","with","would"};
		        System.out.println("*******Connection established**********");

		        try{
		        Dao d=new Dao();
		        d.makeConnection();
		        ResultSet rs=null;
		    	System.out.println("stop words removal");
				String from=request.getParameter("from");

	        	Userbean bean=new Userbean();   ////////////------object create to access current values
	       
	        	bean.setName(from);
				String sql = "Select * from allflights where afrom like '"+from+"'";
				System.out.println("table done");
				
				ResultSet stmt;
	    	   ((Statement) rs).executeQuery(sql);    	
		    		}
		  
		    	
		        catch(Exception e){System.out.println(e);}
				return null;
		  		}			    
		    
				
				 * public void main(String[] args) { // TODO Auto-generated method stub
				 * stopWords obj=new stopWords(); obj.stopClass1();
				 *}
				 */
		    
		}
		}