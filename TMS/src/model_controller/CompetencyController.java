package model_controller;

import data_access_layer.CompetencySQL;
import webservice_layer.Competency;
import webservice_layer.CompetencyArray;

public class CompetencyController {
	
private CompetencySQL CS = new CompetencySQL();
	
	public String createCompetency(Competency competency){
		return CS.CreateCompetency(competency);
	}
	public Competency findCompetency(int Id){
		return CS.FindCompetency(Id);
	}
	public CompetencyArray getAllCompetencies(){
		return CS.getAllCompetencies();
	}
	public String deleteCompetency(Competency competency){
		return CS.DeleteCompetency(competency);
	}
    public String updateCompetency(Competency competency){
    	return CS.UpdateCompetency(competency);
	}
}
