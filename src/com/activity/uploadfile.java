package com.activity;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connection.Dbconn;

/**
 * Servlet implementation class uploadfile
 */
@WebServlet("/uploadfile")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)
public class uploadfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part filePart = request.getPart("txt_search");
		InputStream inputStream = null;
		try {
			inputStream = filePart.getInputStream();
			Connection con = Dbconn.conn();
			String line;
			
			BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
			while ((line = br.readLine()) != null) {
				 String [] Data = line.split("#");
				
                String sql1 = "insert into tblmaster(From_City,Latitude,Longitude) values (?,?,?)";
                PreparedStatement pdt1 = con.prepareStatement(sql1);
                pdt1.setString(1, String.valueOf(Data[0].toString()));
                pdt1.setString(2, String.valueOf(Data[1].toString()));
                pdt1.setString(3, String.valueOf(Data[2].toString()));
               
                pdt1.executeUpdate();
               
				System.out.println(line);

			}// end while loop
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");  
		out.println("alert('Upload Data Set Successfully');");  
		out.println("</script>");
		RequestDispatcher rd = request.getRequestDispatcher("/AdminHomePage.jsp");
		rd.include(request, response);
	}

}
