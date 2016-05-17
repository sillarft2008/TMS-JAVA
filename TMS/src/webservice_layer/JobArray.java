package webservice_layer;

public class JobArray {
	private Job[] jobArray;	 
	private int counter;
	
	public JobArray(int size){
		jobArray = new Job[size];
		counter = 0;
	}

	public Job[] getJobArray(){
		return jobArray;
	}
	
	public void addJob(Job job){
		jobArray[counter] = job;
		counter ++;
	}
	
	public void updateJob(Job job,int i){
		jobArray[i] = job;
	}
	
	public Job getJob(int pos){
		return jobArray[pos];
	}
	
  	public int getNumberOfRows(){
  		return counter;
  	}
	
  	public String toString(){
  		String returnString = "JobArray:\n";
  		for (Job job : jobArray) {
			returnString = returnString + job.toString() + "\n";
		}
  		return returnString;
  	}
	
}


