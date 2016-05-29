package model_controller;
import data_access_layer.JobSQL;
import webservice_layer.Competency;
import webservice_layer.Job;
import webservice_layer.JobArray;

public class JobController {
	
	private JobSQL JS = new JobSQL();
	private CustomerController CC = new CustomerController();
	
	public void createJob(Job job){
		JS.CreateJob(job);
	}
		
	public JobArray findCustomerJobArray(int customerId){
		JobArray jobarray = JS.FindJobByCustomerArray(customerId);
		//for(int i = 0;i < jobarray.getNumberOfRows();i++){
		//	jobarray.updateJob(JCS.FindJobCompetencies(jobarray.getJob(i)), i);
		//}
		return jobarray;
	}
	
	public JobArray findJobArray(){
		return JS.FindJobArray();
	}
	
	public Job findJob(int jobId){
		Job job = JS.FindJobById(jobId);
		job.setCustomer(CC.findCustomer(job.getCustomer().getId()));
		return job;
	}
	
	public String deleteJob(Job job){
		return JS.DeleteJob(job);
	}
    public String updateJob(Job job){
    	return JS.UpdateJob(job);
	} 
}