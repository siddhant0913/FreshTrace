package com.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;


public class Dbconn {
	    public static	Map<String,Integer> step1 = new HashMap<>();
	    public static	Map<String,Integer> step2 = new HashMap<>();
		public static	Map<String,Integer> step3 = new HashMap<>();
		public static	Map<String,Integer> step4 = new HashMap<>();
		public static	Map<String,Integer> step5 = new HashMap<>();
	
	   public Dbconn() throws SQLException {
        super();
       }

public static Connection conn()throws SQLException,ClassNotFoundException{
	Connection con;
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/23ci1604_agrifoodsupplychain", "root", "123");
	return (con);
}
public static void main(String[] srg)
{
	Date day=new Date();
	
	String end="2020-04-04 24:00:00";
	SimpleDateFormat format = new SimpleDateFormat("yyyy-dd-MM HH:mm:ss");

	Date d1 = null;
	
	String currentdate=format.format(day);
	try {
		d1 = format.parse(currentdate);
//		d2 = format.parse(end);
		Date d2 = new SimpleDateFormat("yyyy-dd-MM HH:mm:ss").parse(end); ;

		//in milliseconds
		long diff = d2.getTime() - d1.getTime();

		long diffSeconds = diff / 1000 % 60;
		long diffMinutes = diff / (60 * 1000) % 60;
		long diffHours = diff / (60 * 60 * 1000) % 24;
	long days = diff / (24 * 60 * 60 * 1000);

		System.out.print(days + " days, ");
		System.out.print(diffHours + " hours, ");
		System.out.print(diffMinutes + " minutes, ");
		System.out.print(diffSeconds + " seconds.");

	} catch (Exception e) {
		e.printStackTrace();
	}
}

}
