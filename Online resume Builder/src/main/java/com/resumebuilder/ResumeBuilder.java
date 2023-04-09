package com.resumebuilder;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.spire.doc.Document;
import com.spire.doc.FileFormat;
import com.spire.doc.documents.BookmarksNavigator;
import com.spire.doc.documents.Paragraph;
import com.spire.*;



@MultipartConfig
public class ResumeBuilder extends HttpServlet{
	
	
	
	public void service(HttpServletRequest req , HttpServletResponse res) throws IOException, ServletException {
		
		String fname,lname,email,phone,education,school,s_city,s_s_date,s_e_date,position,employer,j_city,j_s_date,j_e_date,skills,languages,hobbies,template,filetype ;
		
		
		
		
		
		fname = req.getParameter("fname");
		lname = req.getParameter("lname");
		email = req.getParameter("email");
		phone = req.getParameter("phone");
		education = req.getParameter("education");
		school = req.getParameter("school");
		s_city = req.getParameter("s-city");
		s_s_date = req.getParameter("s-s-date");
		s_e_date = req.getParameter("s-e-date");
		position = req.getParameter("position");
		employer = req.getParameter("employer");
		j_city = req.getParameter("j-city");
		j_s_date = req.getParameter("j-s-date");
		j_e_date = req.getParameter("j-e-date");
		skills = req.getParameter("skills");
		languages = req.getParameter("languages");
		hobbies = req.getParameter("hobbies");
		template = req.getParameter("template");
		filetype = req.getParameter("filetype");
		
		String template2;
		
		switch (template) {
		case "template1": {
			template2 = "C:\\Users\\satya\\OneDrive\\Desktop\\CodeClause\\Online resume Builder\\src\\main\\java\\templates\\temp1.docx";
			break;
		}
		case "template2": {
			template2 = "C:\\Users\\satya\\OneDrive\\Desktop\\CodeClause\\Online resume Builder\\src\\main\\java\\templates\\temp2.docx";

			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: " + template);
		}
		
		
		String[] filledNames = new String[] { "Fname", "Lname", "email", "phone", "education", "school", "school_city","s_s_date", "s_e_date", "position", "employer", "j_city", "j_s_date", "j_e_date", "skills", "languages","hobbbies"};

        String[] filledValues = new String[] {fname,lname,email,phone,education,school,s_city,s_s_date,s_e_date,position,employer,j_city,j_s_date,j_e_date,skills,languages,hobbies};
	
        
        
        
        
		try {
			
			
			
			Document doc = new Document(template2);
			
			
			
			doc.getMailMerge().execute(filledNames, filledValues);
			

			
			
		    doc.saveToFile("C:\\Users\\satya\\OneDrive\\Desktop\\CodeClause\\Online resume Builder\\src\\main\\webapp\\files\\resume.pdf",FileFormat.Auto);
		    doc.saveToFile("C:\\Users\\satya\\OneDrive\\Desktop\\CodeClause\\Online resume Builder\\src\\main\\webapp\\files\\resume.docx",FileFormat.Auto);

		   
		    
		    
		    RequestDispatcher dn = req.getRequestDispatcher("downloadpage");
		    dn.forward(req, res);
		    
		    
		    
		    
		    
		   
		
		} catch (Exception e) {
			PrintWriter out = res.getWriter();
		    out.println("Failed..");
		    
		    out.println(e.getStackTrace());
		}
		
		
	
	    
	}
}
