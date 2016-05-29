package webservice_layer;

public class RoleArray {
	
	private Role[] roleArray;
	private int counter;
	
	public RoleArray() {
		roleArray = new Role[0];
		counter = 0;
	}
	public RoleArray(int size){
		roleArray = new Role[size];
		counter = 0;
	}
	public Role[] getRoleArray(){
		return roleArray;
	}
	
	public void addRole(Role role){
		roleArray[counter] = role;
		counter ++;
	}
	
	public Role getRole(int position){
		return roleArray[position];
	}
	
  	public int getNumberOfRows(){
  		return counter+1;
  	}


}
