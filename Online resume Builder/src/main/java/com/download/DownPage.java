package com.download;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.Renderer;

public class DownPage extends HttpServlet {
		
	public void service(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html;charset=UTF-8");		
		RequestDispatcher view = req.getRequestDispatcher("/download.jsp");
	    view.forward(req, res);
	    
	    
	    
	    
	
	}
	
	
}
