package model_controller;

import data_access_layer.UserRoleSQL;
import data_access_layer.UserSQL;
import webservice_layer.Competency;
import webservice_layer.Job;
import webservice_layer.Role;
import webservice_layer.User;
import webservice_layer.UserRole;

public class UserController {
    private	UserSQL US = new UserSQL();
    private UserRoleSQL URS = new UserRoleSQL();
    
    public void addRole(UserRole ur){
		URS.CreateUserRole(ur);
	}
    
	public User selectUser(String name, String pass){
		return US.selectUser(name, pass);
		
	}
	public String createUser(User user){
		
		return US.CreateUser(user);
	}

}
