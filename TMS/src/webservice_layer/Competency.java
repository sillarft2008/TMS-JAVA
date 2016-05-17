package webservice_layer;

public class Competency {
	
	private int Id;
	private String competency;
	
	public Competency() {
		
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getCompetency() {
		return competency;
	}
	public void setCompetency(String competency) {
		this.competency = competency;
	}
	@Override
	public String toString() {
		return "Competency [Id=" + Id + ", competency=" + competency + "]";
	}
}
