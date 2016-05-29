package webservice_layer;

public class UserRole {
	private int Id;
	private int userId;
	private int roleId;
	
	public UserRole() {
		
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	@Override
	public String toString() {
		return "UserRole [Id=" + Id + ", userId=" + userId + ", roleId=" + roleId + "]";
	}
	
	
	

}
