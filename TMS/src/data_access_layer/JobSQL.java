package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;

import webservice_layer.Customer;
import webservice_layer.Job;
import webservice_layer.JobArray;

public class JobSQL {
		
	DBConnect dbconn = new DBConnect();
		
	public JobArray FindJobArray(){
			
		System.out.println("FindJobs");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM job");
			rs.next();
			int count = rs.getInt("result");
			JobArray jobArray = new JobArray(count);
			
			ResultSet rs2 = dbconn.select("SELECT Id,address,startdate,enddate,customerId FROM job");
			
			while (rs2.next()){
				Job job = new Job();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("address=" + rs2.getString("address"));
				System.out.println("startdate=" + rs2.getString("startdate"));
				System.out.println("enddate=" + rs2.getString("enddate"));	
				System.out.println("customerId=" + rs2.getString("customerId"));		
				job.setId(rs2.getInt("Id"));
				job.setAddress(rs2.getString("address"));
				job.setStartDate(rs2.getDate("startdate"));
				job.setEndDate(rs2.getDate("enddate"));
				Customer cust = new Customer();
				cust.setId(rs2.getInt("customerId"));
				job.setCustomer(cust);
				jobArray.addJob(job);
			}	
			return jobArray;
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	
	public JobArray FindJobByCustomerArray(int customerId){
		
		System.out.println("FindJobs");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM job where customerId = " + customerId);
			rs.next();
			int count = rs.getInt("result");
			JobArray jobArray = new JobArray(count);
			
			ResultSet rs2 = dbconn.select("SELECT Id,address,startDate,enddate,customerId FROM job where customerId = " + customerId);
			
			while (rs2.next()){
				Job job = new Job();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("address=" + rs2.getString("address"));
				System.out.println("startdate=" + rs2.getString("startdate"));
				System.out.println("enddate=" + rs2.getString("enddate"));	
				System.out.println("customerId=" + rs2.getString("customerId"));		
				job.setId(rs2.getInt("Id"));
				job.setAddress(rs2.getString("address"));
				job.setStartDate(rs2.getDate("startdate"));
				job.setEndDate(rs2.getDate("enddate"));
				Customer cust = new Customer();
				cust.setId(rs2.getInt("customerId"));
				job.setCustomer(cust);
				jobArray.addJob(job);
			}	
			return jobArray;
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}

	
	public Job FindJobById(int Id){
		System.out.println("FindJob");
		Job job = new Job();
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT Id,address,startdate,enddate,customerId FROM job WHERE id = " + Id);
			rs.next();
			System.out.println("Id=" + rs.getInt("Id"));
			System.out.println("address=" + rs.getString("address"));
			System.out.println("startdate=" + rs.getString("startdate"));
			System.out.println("enddate=" + rs.getString("enddate"));	
			System.out.println("customerId=" + rs.getString("customerId"));		
			job.setId(rs.getInt("Id"));
			job.setAddress(rs.getString("address"));
			job.setStartDate(rs.getDate("startdate"));
			job.setEndDate(rs.getDate("enddate"));
			Customer cust = new Customer();
			cust.setId(rs.getInt("customerId"));
			job.setCustomer(cust);
			return job;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}		
	}
	
	public String CreateJob(Job job){
		System.out.println("CreateJob");
		try {
			dbconn.connect();
			dbconn.insert("INSERT INTO JOB (Id,address,startdate,enddate,customerId) VALUES (" + job.getId() + ",'" + job.getAddress() + "','" + dbconn.convertDate(job.getStartDate()) + "','" + dbconn.convertDate(job.getEndDate()) + "'," + job.getCustomer().getId() + ")");
			return "Job Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Create failed";
	}
	public String DeleteJob(Job job){
		System.out.println("DeleteJob");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM job WHERE Id =" + job.getId());
			return "Job Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Delete failed";
	}
	public String UpdateJob(Job job){
		System.out.println("UdateJob");
		try {
			dbconn.connect();
			dbconn.update("UPDATE job SET address = '" + job.getAddress() +  "',startdate = '" + dbconn.convertDate(job.getStartDate()) +  "',enddate = '" + dbconn.convertDate(job.getEndDate()) +  "',customerid = " + job.getCustomer().getId() + " WHERE Id = " + job.getId());
			return "Job Updated";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Update failed";
	}	
}
