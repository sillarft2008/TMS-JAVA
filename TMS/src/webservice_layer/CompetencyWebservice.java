package webservice_layer;

import model_controller.CompetencyController;

public class CompetencyWebservice {

private CompetencyController CC = new CompetencyController();

	public String createCompetency(Competency competency){
		return CC.createCompetency(competency);
	}

	public Competency[] getAllCompetencies(){		
		return CC.getAllCompetencies().getCompetencyArray();
	}
	
	public Competency findCompetency(int Id){
		return CC.findCompetency(Id);
	}
	
	public String deleteCompetency(Competency competency){
		return CC.deleteCompetency(competency);
	}
	
	public String updateCompetency (Competency competency){
		return CC.updateCompetency(competency);
	}
}
