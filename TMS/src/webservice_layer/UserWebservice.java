package webservice_layer;

import model_controller.UserController;
import model_controller.RoleController;

public class UserWebservice {
	
	private UserController UC = new UserController();
	private RoleController RC = new RoleController();
	
	public User[] findUserArray()
    {
    	return UC.FindUserArray();
    }
	
	public User selectUserById(String id){
		return UC.selectUserById(id);
	}
	
	public User selectUserByName(String name){
		return UC.selectUserByName(name);
	}
	
	public String createUser(User user){
		return UC.createUser(user);
	}
	public void addRole(UserRole ur){
		 UC.addRole(ur);
	}
	
	public String updateUser(User user){
		return UC.UpdateUser(user);
	}
	
	public String deleteUser(String id){
		return UC.DeleteUser(id);
	}

	public Role[] findRoleByUserId(String userId){
		return UC.FindRoleByUserId(userId);
	}
	
	public String deleteUserRoles(String userId){
		return UC.DeleteUserRoles(userId);
	}

	public String createUserRole(UserRole ur){
		return UC.CreateUserRole(ur);
	}
	
	public Role[] getAllRoles(){
		return RC.getAllRoles();
	}
	
}
