package webservice_layer;

import model_controller.EmployeeCompetencyController;

public class EmployeeCompetencyWebservice {

	private EmployeeCompetencyController ECC = new EmployeeCompetencyController();

	public String createEmployeeCompetency(EmployeeCompetency ec){
		return ECC.createEmployeeCompetency(ec);
	}

	public EmployeeCompetency[] getAllEmployeeCompetencies(){		
		return ECC.getAllEmployeeCompetencies().getEmployeeCompetencyArray();
	}
	
	public EmployeeCompetency[] findAllEmployeeCompetencies(int Id){		
		return ECC.findAllEmployeeCompetencies(Id).getEmployeeCompetencyArray();
	}
	
	public EmployeeCompetency findEmployeeCompetency(int Id){
		return ECC.findEmployeeCompetency(Id);
	}
	
	public String deleteEmployeeCompetency(EmployeeCompetency ec){
		return ECC.deleteEmployeeCompetency(ec);
	}
	
	public String updateEmployeeCompetency (EmployeeCompetency ec){
		return ECC.updateEmployeeCompetency(ec);
	}
}
