package webservice_layer;

public class EmployeeArray {

	private Employee[] employeeArray;
	private int counter;
	
	public EmployeeArray() {
		
	}
	public EmployeeArray(int size){
		employeeArray = new Employee[size];
		counter = 0;
	}
	public Employee[] getEmployeeArray(){
		return employeeArray;
	}
	
	public void addEmployee(Employee employee){
		employeeArray[counter] = employee;
		counter ++;
	}
	
	public Employee getEmployee(int position){
		return employeeArray[position];
	}
	
  	public int getNumberOfRows(){
  		return counter+1;
  	}
	
  	public String toString(){
  		String returnString = "CompetencyArray:\n";
  		for (Employee employee : employeeArray) {
			returnString = returnString + employee.toString() + "\n";
		}
  		return returnString;
  	}
}
