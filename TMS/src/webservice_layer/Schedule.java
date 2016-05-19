package webservice_layer;

import java.util.Date;

public class Schedule {
	private int Id;
	private Employee employee;
	private Job job;
	private Item item;
	private Date startTimeDate;
	private Date duration;
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
	public void setStartTimeDate(Date startTimeDate) {
		this.startTimeDate = startTimeDate;
	}
	public Date getDuration() {
		return duration;
	}
	public void setDuration(Date duration) {
		this.duration = duration;
	}
}
