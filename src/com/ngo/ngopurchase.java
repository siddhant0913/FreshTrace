package com.ngo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
 * Servlet implementation class ngopurchase
 */
@WebServlet("/ngopurchase")
public class ngopurchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ngopurchase() {
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
		HttpSession session = request.getSession(true);
		PrintWriter pw=response.getWriter();
		System.out.println("Welcome");
		String Uemail=(String)session.getAttribute("Nemail");
		String useremail=request.getParameter("useremail");
		String txt_id=request.getParameter("txt_id");
		String txt_Pname=request.getParameter("txt_Pname");
		String txt_Pquantity=request.getParameter("txt_Pquantity");
		String txt_Pprice=request.getParameter("txt_Pprice");
		String userquantity=request.getParameter("userquantity");
		int oldqty=Integer.valueOf(txt_Pquantity);
		int newqty=Integer.valueOf(userquantity);
		int price=Integer.valueOf(txt_Pprice);
		try {
		Dbconn db=new Dbconn();
		Connection con=Dbconn.conn();
		if(newqty>oldqty)
		{
			pw.println("<script> alert('Your Quantity have not Sufficient Product');</script>");
		}
		else
		{
			long amount=newqty*price;
			int rmqty=oldqty-newqty;
			PreparedStatement ps=con.prepareStatement("insert into tblngopurchase(ProductName,Quantity,Price,UserQuantity,Totalamount,Email_Id,User_Email_ID) values(?,?,?,?,?,?,?)");
			ps.setString(1, txt_Pname);
			ps.setString(2, txt_Pquantity);
			ps.setString(3, txt_Pprice);
			ps.setString(4, userquantity);
			ps.setString(5, String.valueOf(amount));
			ps.setString(6, Uemail);
			ps.setString(7, useremail);
			ps.executeUpdate();
				
				String data = "NGO" + "#" + txt_Pname + "#"
						+ txt_Pquantity + "#" + txt_Pprice + "#" + userquantity
						+ "#" + amount + "#" + Uemail+"#"+useremail;
				session.setAttribute("ngodata", data);
				session.setAttribute("ngotxt_id", txt_id);
//				 ptop.ptopverify(4, data);
//				String shavalues=Block.applySha256(data);
//				PreparedStatement ps1 = con
//						.prepareStatement("insert into blockchain_transaction(Plain_Data,Sha_values) values(?,?)");
//				ps1.setString(1, data);
//				ps1.setString(2, Block.hash);
//				
//				ps1.executeUpdate();
				Statement st=con.createStatement();
			st.executeUpdate("update user_product_info set qty='"+rmqty+"' where id='"+txt_id+"'");

//			pw.println("<script> alert('Your Purchase Product Successfuly');</script>");
			pw.println("<script> alert('Your Order Product Successfuly');</script>");
		
		}} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/NGO_Product_Payment.jsp");			
		rd.include(request, response);
//		RequestDispatcher rd = request.getRequestDispatcher("/NGO_NShowProduct.jsp");			
//		rd.include(request, response);
	}

}
