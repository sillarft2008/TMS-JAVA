package webservice_layer;

import java.util.Date;

public class Job {
	private int Id;
	private String address;
	private Date startDate;
	private Date endDate;
	private Customer customer;
	private CompetencyArray ArrayOfCompetency;

	public Job(){
		ArrayOfCompetency = new CompetencyArray();
	}
	
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
	public Competency[] getArrayOFCompetency() {
		return ArrayOfCompetency.getCompetencyArray();
	}
	//public CompetencyArray getCompetencyArray() {
	//		return competencyArray;
	//}
	//public void setCompetencyArray(CompetencyArray competencyArray) {
	//	this.competencyArray = competencyArray;
	//}
	public void setArrayOFCompetency(CompetencyArray competencyArray) {
		this.ArrayOfCompetency = competencyArray;
	}
	public String toString(){
		String returnString = "";
		returnString = "Customer:\n" + customer.toString() + "\n";
		returnString += "Job: " + Id + ";" + address + ";" + startDate + ";" + endDate + "\n";
		returnString += ArrayOfCompetency.toString() ;
		return returnString;
	}	

}
