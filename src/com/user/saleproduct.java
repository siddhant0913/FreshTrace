package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Blockchain.Block;
import Blockchain.ptop;

import com.connection.Dbconn;

/**
 * Servlet implementation class saleproduct
 */
@WebServlet("/saleproduct")
public class saleproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public saleproduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		PrintWriter pw = response.getWriter();
		System.out.println("Welcome");
		String Uemail = (String) session.getAttribute("Uemail");
		String Farmer_Email=request.getParameter("farmeremail");
		String txt_id = request.getParameter("txt_id");
		String txt_Pname = request.getParameter("txt_Pname");
		String txt_Pquantity = request.getParameter("txt_Pquantity");
		String txt_Pprice = request.getParameter("txt_Pprice");
		String userquantity = request.getParameter("userquantity");
		String product_info = request.getParameter("product_info");
		int oldqty = Integer.valueOf(txt_Pquantity);
		int newqty = Integer.valueOf(userquantity);
		int price = Integer.valueOf(txt_Pprice);
		try {
			Dbconn db = new Dbconn();
			Connection con = Dbconn.conn();
			if (newqty > oldqty) {
				pw.println("<script> alert('Your Quantity have not Sufficient Product');</script>");
			} else {
				long amount = newqty * price;
				int rmqty = oldqty - newqty;
				PreparedStatement ps = con
						.prepareStatement("insert into tblpurchase(ProductName,Quantity,Price,UserQuantity,Totalamount,Email_Id,Farmer_Email) values(?,?,?,?,?,?,?)");
				ps.setString(1, txt_Pname);
				ps.setString(2, txt_Pquantity);
				ps.setString(3, txt_Pprice);
				ps.setString(4, userquantity);
				ps.setString(5, String.valueOf(amount));

				ps.setString(6, Uemail);
				ps.setString(7,Farmer_Email);
				ps.executeUpdate();
				
				Statement stp = con.createStatement();
				ResultSet rs = stp
						.executeQuery("select * from product_info where id='" + txt_id
								+ "'");
				if (rs.next())
				{
					int qtyo=0;
					Statement ost=con.createStatement();
					ResultSet rso=ost.executeQuery("select sum(UserQuantity) from tblpurchase where Email_Id='"+Uemail+"' and ProductName='"+txt_Pname+"'");
					if(rso.next())
					{
						qtyo=rso.getInt(1);
					}
					else
					{
						qtyo=newqty;	
					}
					
					Statement ostp=con.createStatement();
					ResultSet rsop=ostp.executeQuery("select * from user_product_info where usereremail='"+Uemail+"' and name='"+txt_Pname+"'");
					if(rsop.next())
					{
						ostp.executeUpdate("update user_product_info set qty='"+qtyo+"'where usereremail='"+Uemail+"' and name='"+txt_Pname+"'");	
					}
					else
					{
						
					
					
					PreparedStatement psu=con.prepareStatement("insert into user_product_info(name,qty,product_description,product_price,Location_Food,exp_date,usereremail) values(?,?,?,?,?,?,?)");
					psu.setString(1, rs.getString(2));
					psu.setString(2, String.valueOf(qtyo));
					psu.setString(3, rs.getString(4));
					psu.setString(4, rs.getString(5));
					psu.setString(5, rs.getString(6));
					psu.setString(6, rs.getString(7));
					psu.setString(7, Uemail);
					psu.executeUpdate();
					}
				}

				String data = "Distributors" + "#" + txt_Pname + "#"
						+ txt_Pquantity + "#" + txt_Pprice + "#" + userquantity
						+ "#" + amount + "#" + Uemail+"#"+Farmer_Email;
				session.setAttribute("data", data);
				session.setAttribute("txt_id", txt_id);
				
				Statement st = con.createStatement();
				st.executeUpdate("update product_info set qty='" + rmqty
						+ "' where id='" + txt_id + "'");

//				pw.println("<script> alert('Your Purchase Product Successfuly');</script>");
				pw.println("<script> alert('Your Order Product Successfuly');</script>");

			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request
		.getRequestDispatcher("/Distributors_Product_Payment.jsp");
rd.include(request, response);
//		RequestDispatcher rd = request
//				.getRequestDispatcher("/Distributors_SearchPage.jsp");
//		rd.include(request, response);
	}

}
