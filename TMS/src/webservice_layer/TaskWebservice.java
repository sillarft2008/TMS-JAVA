package webservice_layer;



public class TaskWebservice {
	
	
	public Task[] getTask(int employee){
		System.out.println("getTask called");
		if (employee == 1){
			Task[] tasklist = new Task[2];
			Task task1 = new Task();
			task1.name = "Task1";
			task1.start = 0;
			task1.duration = 4;
			Task task2 = new Task();
			task2.name = "Task2";
			task2.start = 4;
			task2.duration = 2;
			tasklist[0] = task1;
			tasklist[1] = task2;
			System.out.println("getTask returns");
			return tasklist;
		}else if (employee == 2){
			Task[] tasklist = new Task[3];
			Task task1 = new Task();
			task1.name = "Task1";
			task1.start = 0;
			task1.duration = 4;
			Task task3 = new Task();
			task3.name = "Task3";
			task3.start = 4;
			task3.duration = 2;
			Task task4 = new Task();
			task4.name = "Task4";
			task4.start = 6;
			task4.duration = 4;
			tasklist[0] = task1;
			tasklist[1] = task3;
			tasklist[2] = task4;
			System.out.println("getTask returns");
			return tasklist;
		}else if (employee == 3){
			Task[] tasklist = new Task[1];
			Task task4 = new Task();
			task4.name = "Task4";
			task4.start = 6;
			task4.duration = 4;
			tasklist[0] = task4;
			System.out.println("getTask returns");
			return tasklist;
		}
		return null;
		
	}
}
