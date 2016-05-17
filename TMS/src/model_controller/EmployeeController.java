package model_controller;

import data_access_layer.EmployeeSQL;
import webservice_layer.Employee;
import webservice_layer.EmployeeArray;

public class EmployeeController {

private EmployeeSQL ES = new EmployeeSQL();
	
	public String createEmployee(Employee employee){
		return ES.CreateEmployee(employee);
	}
	public Employee findEmployee(int Id){
		return ES.FindEmployee(Id);
	}
	public EmployeeArray getAllEmployees(){
		return ES.getAllEmployees();
	}
	public String deleteEmployee(Employee employee){
		return ES.DeleteEmployee(employee);
	}
    public String updateEmployee(Employee employee){
    	return ES.UpdateEmployee(employee);
	}
}
