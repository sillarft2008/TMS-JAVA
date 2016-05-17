package model_controller;

import data_access_layer.EmployeeCompetencySQL;
import webservice_layer.EmployeeCompetency;
import webservice_layer.EmployeeCompetencyArray;

public class EmployeeCompetencyController {

private EmployeeCompetencySQL ECS = new EmployeeCompetencySQL();
	
	public String createEmployeeCompetency(EmployeeCompetency ec){
		return ECS.CreateEmployeeCompetency(ec);
	}
	public EmployeeCompetency findEmployeeCompetency(int Id){
		return ECS.FindEmployeeCompetency(Id);
	}
	public EmployeeCompetencyArray getAllEmployeeCompetencies(){
		return ECS.getAllEmployeeCompetencies();
	}
	public EmployeeCompetencyArray findAllEmployeeCompetencies(int Id){
		return ECS.findAllEmployeeCompetencies(Id);
	}
	public String deleteEmployeeCompetency(EmployeeCompetency ec){
		return ECS.DeleteEmployeeCompetency(ec);
	}
    public String updateEmployeeCompetency(EmployeeCompetency ec){
    	return ECS.UpdateEmployeeCompetency(ec);
	}
}
