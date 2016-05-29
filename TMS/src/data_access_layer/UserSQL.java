package data_access_layer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import com.mysql.jdbc.PreparedStatement;
import webservice_layer.User;

public class UserSQL {
     
	private Connection conn = null;
	private PreparedStatement preparedStatement = null;
	private static ResultSet rs = null;
	
	
	public User selectUser(String name,String pass ) {
		User user = new User();

		try {
			
			String sql = "SELECT * from user WHERE userName = ? and password = ?";
			Connection conn = DBConnect.getConn();
			
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1,name);
			preparedStatement.setString(2,pass);
			rs = preparedStatement.executeQuery();
			
			//ResultSet rs2 = dbconn.select("SELECT * from user WHERE userName = ? and password = ?");
			
			if(rs.next()) 
			{	
				//User user = new User();
				int userId =  rs.getInt("Id");
				String username = rs.getString("userName");
				String password = rs.getString("password");
	            user = new User(userId,username,password);
				return user;
				
			} else{
				return null;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("error");
			return null;
		} 
		
	}
	
	
			//preparedStatement = conn.prepareStatement("insert into user VALUES(default,?,Md5(?))");
	public String CreateUser(User user){
		System.out.println("Create user");
		try {
			this.conn = DBConnect.getConn();
			preparedStatement = conn.prepareStatement("insert into user VALUES(default,?,Md5(?))");
			//preparedStatement.setInt(1, user.getId());
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword().toString());
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		//finally{
			//DBConnect.connClose();
			//System.out.println("Closed Connection");
		//}
		return "Create failed";
} 
}





	