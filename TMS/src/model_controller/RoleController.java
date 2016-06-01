package model_controller;


import data_access_layer.RoleSQL;
import webservice_layer.Role;
import webservice_layer.RoleArray;

public class RoleController {
private RoleSQL RS = new RoleSQL();
	
	public String createRole(Role role){
		return RS.CreateRole(role);
	}
	public Role findRole(int Id){
		return RS.FindRole(Id);
	}
	public Role[] getAllRoles(){
		return RS.getAllRoles();
	}
	public String deleteRole(Role role){
		return RS.DeleteRole(role);
	}
    public String updateRole(Role role){
    	return RS.UpdateRole(role);
	}

}
