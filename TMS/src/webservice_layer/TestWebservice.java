package webservice_layer;

public class TestWebservice {
	public Test[] test(){
		Test[] testlist = new Test[3];
		Test test1 = new Test();
		test1.name = "Employee1";
		Test test2 = new Test();
		test2.name = "Employee2";
		Test test3 = new Test();
		test3.name = "Employee3";
		Task task1 = new Task();
		task1.name = "Task1";
		task1.start = 0;
		task1.duration = 4;
		Task task2 = new Task();
		task2.name = "Task2";
		task2.start = 4;
		task2.duration = 2;
		Task task3 = new Task();
		task3.name = "Task3";
		task3.start = 4;
		task3.duration = 2;
		Task task4 = new Task();
		task4.name = "Task4";
		task4.start = 6;
		task4.duration = 4;
		Task[] tasklist1 = new Task[5];
		Task[] tasklist2 = new Task[5];
		Task[] tasklist3 = new Task[5];
		tasklist1[0] = task1;
		tasklist2[0] = task1;
		tasklist1[1] = task2;
		tasklist2[1] = task3;
		tasklist2[2] = task4;
		tasklist3[0] = task4;
		test1.tasklist = tasklist1;
		test2.tasklist = tasklist2;
		test3.tasklist = tasklist3;
		testlist[0] = test1;
		testlist[1] = test1;
		testlist[2] = test1;
		
		//System.out.println(testlist[0].toString());
		return testlist;
	}
}
