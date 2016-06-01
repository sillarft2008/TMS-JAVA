package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;

import webservice_layer.Role;
import webservice_layer.RoleArray;

public class RoleSQL {
	
DBConnect dbconn = new DBConnect();
	
	public Role[] getAllRoles() {
		System.out.println("Select all roles");
		try {
			dbconn.connect(); // Calling a static method to solve
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM role");
			rs.next();
			int count = rs.getInt("result");
			
			Role[] roleArray = new Role[count];

			ResultSet rs2 = dbconn.select("SELECT Id,roleName FROM role");

			int i=0;
			while (rs2.next()){
				Role role = new Role();
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
	
	public Role FindRole(int Id){
		System.out.println("Find Role");
		Role role = new Role();
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT Id,roleName FROM role WHERE id = " + Id);
			rs.next();
			System.out.println("Id=" + rs.getInt("Id"));
			System.out.println("roleName=" + rs.getString("roleName"));
			
			role.setId(rs.getString("Id"));
			role.setRole_name(rs.getString("roleName"));
			
			return role;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}		
	}
	
	public String CreateRole(Role role){
		System.out.println("Create role");
		try {
			dbconn.connect();
			dbconn.insert("INSERT INTO ROLE (Id,roleName) VALUES (" + role.getId() + ",'" + role.getRole_name() + "')");
			return "Role Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Create failed";
	}
	public String DeleteRole(Role role){
		System.out.println("Delete Role");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM role WHERE Id =" + role.getId());
			return "Role Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Delete failed";
	}
	public String UpdateRole(Role role){
		System.out.println("Update Role");
		try {
			dbconn.connect();
			dbconn.update("UPDATE role SET role = '" + role.getRole_name() + "' WHERE Id = " + role.getId());
			return "Competency Updated";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Update failed";
	}

}
