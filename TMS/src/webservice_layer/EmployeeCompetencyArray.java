package webservice_layer;

public class EmployeeCompetencyArray {
	private EmployeeCompetency[] ecArray;
	private int counter;
	
	public EmployeeCompetencyArray() {
	}
	public EmployeeCompetencyArray(int size){
		ecArray = new EmployeeCompetency[size];
		counter = 0;
	}
	public EmployeeCompetency[] getEmployeeCompetencyArray(){
		return ecArray;
	}
	
	public void addEmployeeCompetency(EmployeeCompetency ec){
		ecArray[counter] = ec;
		counter ++;
	}
	
	public EmployeeCompetency getEmployeeCompetency(int position){
		return ecArray[position];
	}
	
  	public int getNumberOfRows(){
  		return counter+1;
  	}
	
  	public String toString(){
  		String returnString = "EmployeeCompetencyArray:\n";
  		for (EmployeeCompetency ec : ecArray) {
			returnString = returnString + ec.toString() + "\n";
		}
  		return returnString;
  	}

}
