package webservice_layer;

import java.util.Date;

public class Job {
	private int Id;
	private String address;
	private Date startDate;
	private Date endDate;
	private Customer customer;
	
	public Job(){}
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String toString(){
		String returnString = "Job [Id=" + getId();
		returnString += ", customer=" + customer.toString();
		returnString += ", address=" + getAddress();
		returnString += ", startDate=" + getStartDate();
		returnString += ", endDate=" + getEndDate();
		returnString += "]";
		//returnString += ArrayOfCompetency.toString() ;
		return returnString;
	}	

}
