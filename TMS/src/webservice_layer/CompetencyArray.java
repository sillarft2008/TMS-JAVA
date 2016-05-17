package webservice_layer;

public class CompetencyArray {

	private Competency[] competencyArray;
	private int counter;
	
	public CompetencyArray() {
		
	}
	public CompetencyArray(int size){
		competencyArray = new Competency[size];
		counter = 0;
	}
	public Competency[] getCompetencyArray(){
		return competencyArray;
	}
	
	public void addCompetency(Competency competency){
		competencyArray[counter] = competency;
		counter ++;
	}
	
	public Competency getCompetency(int position){
		return competencyArray[position];
	}
	
  	public int getNumberOfRows(){
  		return counter+1;
  	}
	
  	public String toString(){
  		String returnString = "CompetencyArray:\n";
  		for (Competency competency : competencyArray) {
			returnString = returnString + competency.toString() + "\n";
		}
  		return returnString;
  	}
}
