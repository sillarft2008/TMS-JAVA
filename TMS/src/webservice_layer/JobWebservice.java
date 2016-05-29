package webservice_layer;

import model_controller.JobController;

public class JobWebservice {

	private JobController JC = new JobController();
	
	public void createJob(Job job){
		JC.createJob(job);
	}
	
	public Job[] findJobArray(){
		return JC.findJobArray().getJobArray();
	}
	
	public Job findJob(int jobId){
		return JC.findJob(jobId);
	}
	
	public Job[] findCustomerJobArray(int customerId){
		return JC.findCustomerJobArray(customerId).getJobArray();
	}
	
	public String deleteJob(Job job){
		return JC.deleteJob(job);
	}
	
	public String updateJob(Job job){
		return JC.updateJob(job);
	}
}
