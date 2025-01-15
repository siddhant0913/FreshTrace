package com.framer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Dbconn;

/**
 * Servlet implementation class UpdateProduct
 */
@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			PrintWriter pw=response.getWriter();
			System.out.println("Welcome to delete");
			int id=Integer.parseInt(request.getParameter("txt_id"));
			System.out.println("Id selected===>"+id);
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			Statement st=con.createStatement();
			st.executeUpdate("delete from product_info where id='"+id+"'");
			pw.println("<script> alert('Deleted Product Successfully');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/UpdateProduct.jsp");
					rd.include(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {

			PrintWriter pw=response.getWriter();
			System.out.println("Welcome to Update");
			int id=Integer.parseInt(request.getParameter("txt_id"));
//			System.out.println("Id selected===>"+id);
			String name=request.getParameter("txt_Pname");
//			System.out.println("name selected===>"+name);
			int qty=Integer.parseInt(request.getParameter("txt_Pquantity"));
//			System.out.println("Id selected===>"+qty);
			String product_info=request.getParameter("txt_Pdescription");
//			System.out.println("Id selected===>"+product_info);
			String txt_Pprice=request.getParameter("txt_Pprice");
//			System.out.println("Id selected===>"+txt_Pprice);
			String manufacture_date=request.getParameter("txt_Pmanufacture");
//			System.out.println("Id selected===>"+manufacture_date);
			String exp_date=request.getParameter("txt_Pexpiry");
			System.out.println("Id selected===>"+exp_date);
			System.out.println("Id selected===>"+id);
			System.out.println("name selected===>"+name);
			System.out.println("pdesc selected===>"+qty);
			System.out.println("pdesc selected===>"+product_info);
		//	System.out.println("pdesc selected===>"+extra);
			System.out.println("pdesc selected===>"+txt_Pprice);
			System.out.println("pdesc selected===>"+manufacture_date);
			System.out.println("pdesc selected===>"+exp_date);

			Dbconn db=new Dbconn();
			Connection con=db.conn();
			Statement st=con.createStatement();
			Statement st1=con.createStatement();
			int dbqty=0;
			ResultSet rs=st1.executeQuery("select * from product_info  where id='"+id+"'");
			if(rs.next())
			{
				dbqty=rs.getInt("qty");
			}
			int totalqty=qty+dbqty;
			
			st.executeUpdate("update product_info set  name='"+name+"',qty='"+totalqty+"',product_description='"+product_info+"',product_price='"+txt_Pprice+"',Location_Food='"+manufacture_date+"',exp_date='"+exp_date+"' where id='"+id+"'");
			pw.println("<script> alert(' Updated Product Successfully');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/UpdateProduct.jsp");
					rd.include(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
