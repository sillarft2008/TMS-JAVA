package webservice_layer;

public class EmployeeCompetency {
	private int Id;
	private int employeeId;
	private int competencyId;
	
	public EmployeeCompetency() {
		
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public int getCompetencyId() {
		return competencyId;
	}
	public void setCompetencyId(int competencyId) {
		this.competencyId = competencyId;
	}
	@Override
	public String toString() {
		return "EmployeeCompetency [Id=" + Id + ", employeeId=" + employeeId + ", competencyId=" + competencyId + "]";
	}

}
