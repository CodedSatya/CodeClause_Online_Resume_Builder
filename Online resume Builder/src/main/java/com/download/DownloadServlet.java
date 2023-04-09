package com.download;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException{
			
		
	
		String name = request.getParameter("filename");
		
		File f = new File(name);
		String filename = f.getName();
		
		response.setHeader("content-disposition", "attachment;filename="+filename);
		
		OutputStream out1 = response.getOutputStream();
		
		
		String downpath = "C:\\Users\\satya\\OneDrive\\Desktop\\CodeClause\\Online resume Builder\\src\\main\\webapp\\files\\"+"\\"+filename;
		
		FileInputStream in = new FileInputStream(downpath);
		
		byte b[] = new byte[in.available()];
		in.read(b);
		out1.write(b);
		
		out1.close();
		in.close();
		
		
		
		
	}
		
	
}
