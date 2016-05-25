package data_access_layer;


import java.util.Date;

import model_controller.JobController;
import webservice_layer.Competency;
import webservice_layer.CompetencyArray;
import webservice_layer.Customer;
import webservice_layer.CustomerWebservice;
import webservice_layer.Employee;
import webservice_layer.Item;
import webservice_layer.Job;
import webservice_layer.JobArray;
import webservice_layer.JobWebservice;
import webservice_layer.Schedule;
import webservice_layer.ScheduleWebservice;
import webservice_layer.TestWebservice;


public class test {

	public static void main(String[] args) {
//		TWStest();
//		JWStest();
//		findCustomerJobArray();
		testScheduleWebservice();
	}
	
	public static void testFindCustomerArray(){
		CustomerSQL CS = new CustomerSQL();
		System.out.println("testFindCustomerArray");
		System.out.println(CS.FindCustomerArray().toString());
	}
	public static void testCWSFindCustomerArray(){
		CustomerWebservice CWS = new CustomerWebservice();
		System.out.println("testCWSFindCustomerArray");
		Customer[] CA = CWS.findCustomerArray();
		System.out.println(CA.toString());
	}

	public static void TWStest(){
		TestWebservice TWS = new TestWebservice();
		System.out.println("TWStest");
		TWS.test();
		
	}
	
	public static void JWStest(){
		@SuppressWarnings("unused")
		CustomerWebservice CWS = new CustomerWebservice();
		JobWebservice JWS = new JobWebservice();
		Customer customer = new Customer();
		customer.setId(21);
		customer.setFirstName("Floreza");
		customer.setLastName("Jensen");
		customer.setAddress("Holdkærs ager");
		customer.setTelefone("29849512");
		customer.setCompanyName("Student");
		customer.setCvr(0);
		//CWS.createCustomer(customer);
		Job job = new Job();
		job.setId(1);
		job.setCustomer(customer);
		job.setAddress("Vinkelhuse");
		//job.setStartDate("2016-01-01");
		//job.setEndDate("2017-01-01");
		JWS.createJob(job);
	}
	
	public static void findCustomerJobArray(){
		JobController JWS = new JobController();
		//JobWebservice JWS = new JobWebservice();
		int customerId = 1;
		@SuppressWarnings("unused")
		//Job[] jobArray = JWS.findCustomerJobArray(customerId);
		JobArray joblist = JWS.findCustomerJobArray(customerId);
		System.out.println("Jobarray\n");
		System.out.println(joblist.toString());
		//System.out.println(jobArray[0].toString());
		//Competency[] ccc = jobArray[0].getCompetencyArray();
		//System.out.println(ccc[0].toString());
	}
	
	@SuppressWarnings({ "deprecation", "static-access" })
	public static void testScheduleWebservice(){
		int scheduleId = 6;
		int employeeId = 5;
		int jobId = 2;
		int competencyId = 3;
		int itemId = 2;
		String startTimeDateString = "2016-01-01 09:00:00";
		String durationString = "1970-01-01 02:00:00"; 
		
		
		ScheduleWebservice SW = new ScheduleWebservice();
		DBConnect DBC = new DBConnect();
		Schedule schedule = new Schedule();
		Employee employee = new Employee();
		Job job = new Job();
		Competency competency = new Competency();
		Item item = new Item();
		
		employee.setId(employeeId);
		job.setId(jobId);
		competency.setId(competencyId);
		item.setId(itemId);
		
		Date startTimeDate = DBC.convertDateTime(startTimeDateString);
		Date duration = DBC.convertDateTime(durationString);
		
		schedule.setId(scheduleId);
		schedule.setEmployee(employee);
		schedule.setJob(job);
		schedule.setCompetency(competency);
		schedule.setItem(item);
		schedule.setStartTimeDate(startTimeDate);
		schedule.setDuration(duration);
		
		SW.createSchedule(schedule);
		
		//System.out.println(SW.deleteSchedule(schedule));
		
		//employee.setId(2);
		//schedule.setEmployee(employee);
		//SW.updateSchedule(schedule);
		/*Date date = DBC.convertDate("2016-01-01");
		Schedule[] scheduleArray = SW.findScheduleArrayByEmployeeDate(3, date);
		System.out.println("findScheduleArray()");
		for (int i= 0;i<scheduleArray.length;i++){
			System.out.println(scheduleArray[i].toString());
		}*/
	}
	
}
