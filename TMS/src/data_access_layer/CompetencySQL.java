package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;
import webservice_layer.Competency;
import webservice_layer.CompetencyArray;

public class CompetencySQL {

	DBConnect dbconn = new DBConnect();
	
	public CompetencyArray getAllCompetencies() {
		System.out.println("Select all competencies");
		try {
			dbconn.connect(); // Calling a static method to solve
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM competency");
			rs.next();
			int count = rs.getInt("result");
			
			CompetencyArray competencyArray = new CompetencyArray(count);

			ResultSet rs2 = dbconn.select("SELECT Id,competency FROM competency");

			while (rs2.next()){
				Competency competency = new Competency();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("competency=" + rs2.getString("competency"));
		
				competency.setId(rs2.getInt("Id"));
				competency.setCompetency(rs2.getString("competency"));
			
		        competencyArray.addCompetency(competency);
			}	
			return competencyArray;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	
	public Competency FindCompetency(int Id){
		System.out.println("Find Competency");
		Competency competency = new Competency();
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT Id,competency FROM competency WHERE id = " + Id);
			rs.next();
			System.out.println("Id=" + rs.getInt("Id"));
			System.out.println("competency=" + rs.getString("competency"));
			
			competency.setId(rs.getInt("Id"));
			competency.setCompetency(rs.getString("competency"));
			
			return competency;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}		
	}
	
	public String CreateCompetency(Competency competency){
		System.out.println("Create competency");
		try {
			dbconn.connect();
			dbconn.insert("INSERT INTO COMPETENCY (Id,competency) VALUES (" + competency.getId() + ",'" + competency.getCompetency() + "')");
			return "Competency Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Create failed";
	}
	public String DeleteCompetency(Competency competency){
		System.out.println("Delete Competency");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM competency WHERE Id =" + competency.getId());
			return "Competency Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Delete failed";
	}
	public String UpdateCompetency(Competency competency){
		System.out.println("Update Competency");
		try {
			dbconn.connect();
			dbconn.update("UPDATE competency SET competency = '" + competency.getCompetency() + "' WHERE Id = " + competency.getId());
			return "Competency Updated";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Update failed";
	}
}
