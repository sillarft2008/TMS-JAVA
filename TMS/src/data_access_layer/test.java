package data_access_layer;


import model_controller.JobController;
import webservice_layer.Competency;
import webservice_layer.CompetencyArray;
import webservice_layer.Customer;
import webservice_layer.CustomerWebservice;
import webservice_layer.Job;
import webservice_layer.JobArray;
import webservice_layer.JobWebservice;
import webservice_layer.TestWebservice;


public class test {

	public static void main(String[] args) {
//		TWStest();
//		JWStest();
		findCustomerJobArray();
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
	
}
