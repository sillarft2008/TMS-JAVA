package webservice_layer;

public class ScheduleArray {
	private Schedule[] scheduleArray;
	private int counter;
	
	public ScheduleArray(int size){
		scheduleArray = new Schedule[size];
		counter = 0;
	}

	public Schedule[] getScheduleArray(){
		return scheduleArray;
	}
	
	public void addSchedule(Schedule schedule){
		scheduleArray[counter] = schedule;
		counter ++;
	}
	
	public void updateSchedule(Schedule schedule,int i){
		scheduleArray[i] = schedule;
	}
	
	public Schedule getSchedule(int pos){
		return scheduleArray[pos];
	}
	
  	public int getNumberOfRows(){
  		return counter;
  	}
	
  	public String toString(){
  		String returnString = "ScheduleArray:\n";
  		for (Schedule schedule : scheduleArray) {
			returnString = returnString + schedule.toString() + "\n";
		}
  		return returnString;
  	}
}
