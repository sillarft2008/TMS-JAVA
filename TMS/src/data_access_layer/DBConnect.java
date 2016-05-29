package data_access_layer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class DBConnect {
	private static String password = "root";
	private static String username = "root";
	private static String url = "jdbc:mysql://localhost/tms";
	private static Connection conn;
	private Statement stmnt;
	private ResultSet rs;
	private DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	private DateFormat df2 = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	
	public DBConnect(){
		TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
	}
	
	public static Connection getConn() throws SQLException
	{
		//setConn();
		setConn();
		return conn;
	}
	
	private static void setConn() throws SQLException
	{
		
		conn = DriverManager.getConnection("jdbc:mysql://localhost/tms?user=root&password=root");		

	}

	public static void connClose()
	{
		if (conn != null)
		{
			try
			{
				conn.close();
			}
			catch (SQLException e)
			{
				System.err.println(e);
			}
		}
	}
	
	public void connect() throws SQLException{
		try {
			conn = DriverManager.getConnection(url,username, password);
			stmnt = conn.createStatement();
			System.out.println("Connected to Database:" + url);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}	
	}
	
	public void close() throws SQLException{
		conn.close();
	}
	
	
	public ResultSet select(String sqlString) throws SQLException{
		try {
			rs = stmnt.executeQuery(sqlString);
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}
	}
	
	public void update(String sqlString) throws SQLException{
		try {
			stmnt.execute(sqlString);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}
	}
		
	public void insert(String sqlString) throws SQLException{
		try {
			stmnt.execute(sqlString);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}
	}

	public void delete(String sqlString) throws SQLException{
		try {
			stmnt.execute(sqlString);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}
	}

	public ResultSet getResultSet(){
		return rs;
	}
	
	public String convertDate(Date date){
		System.out.println(date.toString());
		System.out.println(df.format(date));
		return df.format(date);
	}
	public String convertDateTime(Date date){
		System.out.println(date.toString());
		System.out.println(df2.format(date));
		return df2.format(date);
	}
	public Date convertDate(String date){
		try {
			return df.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public Date convertDateTime(String date){
		try {
			return df2.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
