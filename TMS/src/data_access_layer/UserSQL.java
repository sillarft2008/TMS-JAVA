package data_access_layer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import webservice_layer.Customer;
import webservice_layer.CustomerArray;
//import com.mysql.jdbc.PreparedStatement;
import webservice_layer.User;
import webservice_layer.UserRole;

public class UserSQL {
	
     
	private Connection conn = null;
	private PreparedStatement preparedStatement = null;
	private static ResultSet rs = null;
	
	
	public User[] FindUserArray(){
		
		DBConnect dbconn = new DBConnect();
		
		System.out.println("FindUserArray");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM user");
			rs.next();
			int count = rs.getInt("result");
			User[] userArray = new User[count];
			
			ResultSet rs2 = dbconn.select("SELECT Id,userName,password,securityStamp FROM user");
			
			int i = 0;
			while (rs2.next()){
				User user = new User();
				user.setId(rs2.getString("Id"));
				user.setUsername(rs2.getString("userName"));
				user.setPassword(rs2.getString("password"));
				user.setSecurityStamp(rs2.getString("securityStamp"));
		        userArray[i] = user;
		        i++;
			}	
			dbconn.close();
			return userArray;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	
	public User selectUserByName(String name) {
		User user = new User();

		try {
			
			String sql = "SELECT * from user WHERE userName = ? ";
			Connection conn = DBConnect.getConn();
			
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1,name);
			rs = preparedStatement.executeQuery();
			
			//ResultSet rs2 = dbconn.select("SELECT * from user WHERE userName = ? and password = ?");
			
			if(rs.next()) 
			{	
				//User user = new User();
				String userId =  rs.getString("Id");
				String username = rs.getString("userName");
				String password = rs.getString("password");
				String securitystamp = rs.getString("securitystamp");
	            user = new User(userId,username,password,securitystamp);
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

	public User selectUserById(String id) {
		User user = new User();

		try {
			
			String sql = "SELECT * from user WHERE Id = ? ";
			Connection conn = DBConnect.getConn();
			
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1,id);
			rs = preparedStatement.executeQuery();
			
			//ResultSet rs2 = dbconn.select("SELECT * from user WHERE userName = ? and password = ?");
			
			if(rs.next()) 
			{	
				//User user = new User();
				String userId =  rs.getString("Id");
				String username = rs.getString("userName");
				String password = rs.getString("password");
				String securitystamp = rs.getString("securitystamp");
	            user = new User(userId,username,password,securitystamp);
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
			preparedStatement = conn.prepareStatement("insert into user(Id,userName,password,SecurityStamp) VALUES(?,?,?,?)");
			preparedStatement.setString(1, user.getId());
			preparedStatement.setString(2, user.getUsername());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getSecurityStamp());
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
	
	public String UpdateUser(User user){
		System.out.println("UpdateUser");
		try {
			this.conn = DBConnect.getConn();
			preparedStatement = conn.prepareStatement("update user set userName = ?, password = ?, SecurityStamp = ? where id = ? ");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getSecurityStamp());
			preparedStatement.setString(4, user.getId());
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
		return "UpdateUser failed";
	}	 

	public String DeleteUser(String id){
		System.out.println("DeleteUser");
		try {
			this.conn = DBConnect.getConn();
			preparedStatement = conn.prepareStatement("delete from user where id = ? ");
			preparedStatement.setString(1, id);
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
		return "DeleteUser failed";
	}	 

	
	
}





	