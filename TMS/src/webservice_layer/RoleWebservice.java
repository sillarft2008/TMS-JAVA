package webservice_layer;


import model_controller.RoleController;

public class RoleWebservice {
	
	private RoleController RC = new RoleController();

	public String createRole(Role role){
		return RC.createRole(role);
	}

	public Role[] getAllRoles(){		
		return RC.getAllRoles().getRoleArray();
	}
	
	public Role findRole(int Id){
		return RC.findRole(Id);
	}
	
	public String deleteRole(Role role){
		return RC.deleteRole(role);
	}
	
	public String updateRole (Role role){
		return RC.updateRole(role);
	}

}
