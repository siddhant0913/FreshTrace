package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.Dbconn;

/**
 * Servlet implementation class Useraddproduct
 */
@WebServlet("/Useraddproduct")
public class Useraddproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Useraddproduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	public static String hourscalculation(String Enddate)
	{
		 long days=0;
		 long diffHours=0;
		Date day=new Date();
		
		String end=Enddate;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-dd-MM HH:mm:ss");

		Date d1 = null;
		
		String currentdate=format.format(day);
		try {
			d1 = format.parse(currentdate);
//			d2 = format.parse(end);
			Date d2 = new SimpleDateFormat("yyyy-dd-MM HH:mm:ss").parse(end); ;

			//in milliseconds
			long diff = d2.getTime() - d1.getTime();

			long diffSeconds = diff / 1000 % 60;
			long diffMinutes = diff / (60 * 1000) % 60;
		 diffHours = diff / (60 * 60 * 1000) % 24;
			days = diff / (24 * 60 * 60 * 1000);

			System.out.print(days + " days, ");
			System.out.print(diffHours + " hours, ");
			System.out.print(diffMinutes + " minutes, ");
			System.out.print(diffSeconds + " seconds.");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return String.valueOf(days+"#"+diffHours);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		PrintWriter pw=response.getWriter();
		System.out.println("Welcome");
		
		try {
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			String name=request.getParameter("txt_Pname");
			String qty=request.getParameter("txt_Pquantity");
			//int unique_id=Integer.parseInt(request.getParameter("txt_Pid"));
			String unique_id=request.getParameter("txt_Pid");
			String product_info=request.getParameter("txt_Pdescription");
			String extra="";
			String extra0=request.getParameter("txt_Pprice");
			String Location_Food=request.getParameter("txt_Plocation");
			String exp_date=request.getParameter("txt_Pexpiry");
			String frameremail=(String)session.getAttribute("Uemail");	
			System.out.println("pname===>"+name);
			System.out.println("pquantity===>"+qty);
			System.out.println("pid===>"+unique_id);
			System.out.println("pdescription===>"+product_info);
			System.out.println("extra===>"+extra);
			System.out.println("pprice===>"+extra0);
			System.out.println("Location_Food===>"+Location_Food);
			System.out.println("pexpiry===>"+exp_date);
			String enddate=exp_date+" 24:00:00";
			String day=hourscalculation(enddate);
			String[] d=day.split("#");
			
			int id=0;
			int flag=0;
			Statement st1=con.createStatement();
			ResultSet rs1=st1.executeQuery("select * from user_product_info where name='"+name+"' and usereremail='"+frameremail+"'");
			if(rs1.next())
			{
				flag=1;
				
			}
			
			if(flag==0)
			{
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select max(ID) from user_product_info ");
			if(rs.next())
			{
				int maxi=rs.getInt(1);
				id=maxi+1;
			}
			System.out.println("id===>"+id);
			PreparedStatement ps=con.prepareStatement("insert into user_product_info(name,qty,product_description,product_price,Location_Food,exp_date,usereremail) values(?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, qty);
			ps.setString(3, product_info);
			ps.setString(4, extra0);
			ps.setString(5, Location_Food);
			ps.setString(6, exp_date);
			ps.setString(7, frameremail);
			
			
			
			ps.executeUpdate();
			
			pw.println("<script> alert(' Product added Successfully');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/DistributorsAddProduct.jsp");			
			rd.include(request, response);
			}
			else
			{
				pw.println("<script> alert(' Product Allready Exits');</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/Distributors_UpdateProduct.jsp");			
				rd.include(request, response);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

}
