package webservice_layer;

public class Role {
	private String Id;
	private String role_name;
	
	public Role() {
		
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getRole_name() {
		return role_name;
	}

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

	@Override
	public String toString() {
		return "Role [Id=" + Id + ", role_name=" + role_name + "]";
	}
	
	

}
