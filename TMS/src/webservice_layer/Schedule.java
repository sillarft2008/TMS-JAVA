package webservice_layer;

import java.time.Year;
import java.util.Date;

import data_access_layer.DBConnect;

public class Schedule {
	private int Id;
	private Employee employee;
	private Job job;
	private Competency competency;
	private Item item;
	private Date startTimeDate;
	private Date duration;
	private String startTimeDateString;
	private DBConnect dbc = new DBConnect();
	
	public Schedule(){}
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public Date getStartTimeDate() {
		return startTimeDate;
	}
	public String getStartTimeDateString() {
		return startTimeDateString;
	}
	public void setStartTimeDate(Date startTimeDate) {
		this.startTimeDate = startTimeDate;
	    this.startTimeDateString = dbc.convertDateTime(startTimeDate);
	}
	public void setStartTimeString(String startTimeDate) {
		this.startTimeDateString = startTimeDate;
	    this.startTimeDate = dbc.convertDateTime(startTimeDateString);
	}
	
	public Date getDuration() {
		return duration;
	}
	public void setDuration(Date duration) {
		this.duration = duration;
	}
	public Competency getCompetency() {
		return competency;
	}
	public void setCompetency(Competency competency) {
		this.competency = competency;
	}
	public String toString(){
		String returnString = "Schedule [Id=" + getId();
		returnString += ", employee=" + employee.toString();
		returnString += ", job=" + job.toString();
		returnString += ", itemId=" + getItem().getId();
		returnString += ", competency=" + competency.toString();
		DBConnect DBC = new DBConnect();
		returnString += ", startTimeDate=" + DBC.convertDateTime(getStartTimeDate());
		returnString += ", duration=" + getDuration();
		returnString += "]\n";
		return returnString;
	}

}
