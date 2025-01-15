package com.user;

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
 * Servlet implementation class payment_process
 */
@WebServlet("/payment_process")
public class payment_process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment_process() {
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
		PrintWriter pw = response.getWriter();
		System.out.println("Welcome");
		String Uemail = (String) session.getAttribute("Uemail");
		String Farmer_Email=request.getParameter("farmeremail");
		String txt_id = request.getParameter("txt_id");
		String txt_Pname = request.getParameter("txt_Pname");
		String txt_Pquantity = request.getParameter("txt_Pquantity");
		String txt_Pprice = request.getParameter("txt_Pprice");
		String userquantity = request.getParameter("userquantity");
		String useamount = request.getParameter("useamount");
		String cardno=request.getParameter("cardno");
		String Expirydate=request.getParameter("Expirydate");
		String cvvno=request.getParameter("cvvno");
		
		try {
			Dbconn db = new Dbconn();
			Connection con = Dbconn.conn();
			{
			
				String data = "Distributors" + "#" + txt_Pname + "#"
						+ txt_Pquantity + "#" + txt_Pprice + "#" + userquantity
						+ "#" + useamount + "#" + Uemail+"#"+Farmer_Email+"#"+cardno+"#"+Expirydate+"#"+cvvno;
				session.setAttribute("data", data);
				session.setAttribute("txt_id", txt_id);
				System.out.println(data);
				 ptop.ptopverify(4, data);
			//	String shavalues=Block.applySha256(data);
				PreparedStatement ps1 = con
						.prepareStatement("insert into blockchain_transaction(Plain_Data,Sha_values) values(?,?)");
				ps1.setString(1, data);
				ps1.setString(2, Block.hash);
				
				ps1.executeUpdate();
				

				pw.println("<script> alert('Your Purchase Product Successfuly');</script>");

			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/Distributors_SearchPage.jsp");
		rd.include(request, response);
	}

}
