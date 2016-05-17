package webservice_layer;

public class Test {
	public Task[] tasklist;
	public String name;
	
	public String toString(){
  		String returnString = "TestArray:\n";
  		for (Task task : tasklist) {
			returnString = returnString + task.toString() + "\n";
		}
  		return returnString;
  	}
	
}
