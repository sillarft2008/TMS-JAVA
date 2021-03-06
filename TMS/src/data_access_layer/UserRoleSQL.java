package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;

import webservice_layer.Role;
import webservice_layer.RoleArray;
import webservice_layer.User;
import webservice_layer.UserRole;

public class UserRoleSQL {
	
	DBConnect dbconn = new DBConnect();
	
	public User FindUserRole(User user){
			
		System.out.println("FindUserRole");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM user_role,role WHERE Id = roleId AND userId = " + user.getId());
			rs.next();
			int count = rs.getInt("result");
			RoleArray roleArray = new RoleArray(count);
			
			ResultSet rs2 = dbconn.select("SELECT userId,roleId,Id,role FROM user_role,role WHERE Id = roleId AND userId = " + user.getId());
			
			while (rs2.next()){
				Role role= new Role();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("role=" + rs2.getString("role"));
				role.setId(rs2.getString("Id"));
				role.setRole_name(rs2.getString("roleName"));
				roleArray.addRole(role);
			}	
		
			return user;
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}	
	
	public Role[] FindRoleByUserId(String userId){
		
		System.out.println("FindUserRole");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM user_role,role WHERE Id = roleId AND userId = '" + userId + "'");
			rs.next();
			int count = rs.getInt("result");
			Role[] roleArray = new Role[count];
			
			ResultSet rs2 = dbconn.select("SELECT userId,roleId,Id,roleName FROM user_role,role WHERE Id = roleId AND userId = '" + userId + "'");
			
			int i = 0;
			while (rs2.next()){
				Role role= new Role();
				role.setId(rs2.getString("Id"));
				role.setRole_name(rs2.getString("roleName"));
				roleArray[i] = role;
				i++;
			}	
		
			return roleArray;
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}	
	
	public String CreateUserRole(UserRole ur){
		System.out.println("CreateUserRole");
		try {
			dbconn.connect();
			dbconn.insert("INSERT INTO user_role (userId,roleId) VALUES ('" + ur.getUserId() + "','"+ ur.getRoleId() + "')");
			return "UserRole Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Create failed";
	}

	public String DeleteUserRole(User user,Role role){
		System.out.println("DeleteUserRole");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM user_role WHERE userId = " + user.getId() + "AND roleId = " + role.getId());
			return "UserRole Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Delete failed";
	}
	
	public String DeleteUserRoles(String userId){
		
		System.out.println("DeleteUserRoles");
		try {
			dbconn.connect();
			dbconn.delete("delete from user_role where userId = '" + userId + "'");
			return "UserRoles Deleted";
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		//finally{
			//DBConnect.connClose();
			//System.out.println("Closed Connection");
		//}
		return "DeleteUserRoles failed";
	}

}
