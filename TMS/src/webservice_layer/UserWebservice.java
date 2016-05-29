package webservice_layer;

import model_controller.UserController;

public class UserWebservice {
	
	private UserController UC = new UserController();
	
	
	public User selectUser(String name,String pass){
		return UC.selectUser(name, pass);
	}
	
	public String createUser(User user){
		return UC.createUser(user);
	}
	public void addRole(UserRole ur){
		 UC.addRole(ur);
	}
	
	

}
