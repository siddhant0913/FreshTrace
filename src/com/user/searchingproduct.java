package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DecimalFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algo.distancecalculator;
import com.connection.Dbconn;

/**
 * Servlet implementation class searchingproduct
 */
@WebServlet("/searchingproduct")
public class searchingproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public static double th=5.0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchingproduct() {
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
		
		String foodname=request.getParameter("txt_Pname");
		String locationname=request.getParameter("txt_Plocation");
		Connection con;
		String id="";
		try
		{
			 DecimalFormat df2 = new DecimalFormat("##.##");
			 double srclatitude=0.0;
			 double srclongitude=0.0;
			con = Dbconn.conn();
			Statement s=con.createStatement();
			s.executeUpdate("TRUNCATE table tblscore");
			Statement st=con.createStatement();
			Statement st1=con.createStatement();
			ResultSet rss=st.executeQuery("select * from tblmaster where From_City='"+locationname+"'");
			if(rss.next())
			{
				
				 srclatitude=rss.getDouble("Latitude");
				 srclongitude=rss.getDouble("Longitude");
			}
			
			
			
			 String query="select * from product_info where name LIKE ?";
	    	   System.out.println(query);
	    	   PreparedStatement ps = con.prepareStatement(query);
	    	    ps.setString(1, "%" + foodname + "%");

	    	    // process the results
	    	    ResultSet rs1 = ps.executeQuery();
			if(rs1.next())
			{
				 PreparedStatement ps1 = con.prepareStatement(query);
		    	    ps1.setString(1, "%" + foodname + "%");
		    	    ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
				id=rs.getString("id");
				double deslatitude=0.0;
				 double deslongitude=0.0;
				 String deslocationname=rs.getString("Location_Food");
				 
				ResultSet rss1=st1.executeQuery("select * from tblmaster where From_City='"+deslocationname+"'");
				if(rss1.next())
				{
					
					 deslatitude=rss1.getDouble("Latitude");
					 deslongitude=rss1.getDouble("Longitude");
					 
				}
				
				distancecalculator loc1 = new distancecalculator(locationname, srclatitude, srclongitude);
				distancecalculator loc2 = new distancecalculator(deslocationname,deslatitude, deslongitude);  
		        double distance = loc1.distanceTo(loc2);
		        System.out.println("Distance Km=>"+distance);
		        System.out.println(loc1 + " to " + loc2);
		       // if(distance>=th)
		        {
		        String sql="insert into tblscore(From_City,To_City,Product_Name,Km_Location,F_ID) values(?,?,?,?,?)";
				PreparedStatement p=(PreparedStatement) con.prepareStatement(sql);
				
				String dist=df2.format(distance);
				p.setString(1,locationname);
				p.setString(2,deslocationname);
				p.setString(3,foodname);
				p.setString(4,dist);
				p.setString(5,id);
				
				p.executeUpdate();
		        
		      // System.out.println("Distance Km=>"+distance);
		        }
		        }
			}
			else
			{PrintWriter pw=response.getWriter();
				pw.println("<script> alert(' Not Available Product');</script>");	
				
				
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/Distributors_ShowProduct.jsp");
		rd.include(request, response); 
	}

}
