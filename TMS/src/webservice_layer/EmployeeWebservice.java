package webservice_layer;

import model_controller.EmployeeController;

public class EmployeeWebservice {

	private EmployeeController EC = new EmployeeController();

	public String createEmployee(Employee employee){
		return EC.createEmployee(employee);
	}

	public Employee[] getAllEmployees(){		
		return EC.getAllEmployees().getEmployeeArray();
	}
	
	public Employee findEmployee(int Id){
		return EC.findEmployee(Id);
	}
	
	public String deleteEmployee(Employee employee){
		return EC.deleteEmployee(employee);
	}
	
	public String updateEmployee (Employee employee){
		return EC.updateEmployee(employee);
	}
}
