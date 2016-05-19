package webservice_layer;

public class CompetencyArray {

	private Competency[] competencyArray;
	private int counter;
	
	public CompetencyArray() {
		competencyArray = new Competency[0];
		counter = 0;
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
  		for (int i = 0 ; i< competencyArray.length;i++) {
			returnString = returnString + competencyArray[i].toString() + "\n";
		}
  		return returnString;
  	} 
}
