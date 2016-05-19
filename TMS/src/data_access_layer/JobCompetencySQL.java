package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;

import webservice_layer.Competency;
import webservice_layer.CompetencyArray;
import webservice_layer.Job;

public class JobCompetencySQL {
		
	DBConnect dbconn = new DBConnect();
		
	public Job FindJobCompetencies(Job job){
			
		System.out.println("FindJobCompetencies");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM job_competency,competency WHERE competency.Id = job_competency.competencyId AND jobId = " + job.getId());
			rs.next();
			int count = rs.getInt("result");
			CompetencyArray competencyArray = new CompetencyArray(count);
			
			ResultSet rs2 = dbconn.select("SELECT jobId,competencyId,competency.Id,competency FROM job_competency,competency WHERE competency.Id = job_competency.competencyId AND jobId = " + job.getId());
			
			while (rs2.next()){
				Competency competency= new Competency();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("competency=" + rs2.getString("competency"));
				competency.setId(rs2.getInt("Id"));
				competency.setCompetency(rs2.getString("competency"));
				competencyArray.addCompetency(competency);
			}	
			job.setArrayOFCompetency(competencyArray);
			return job;
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}	
	
	public String CreateJobCompetency(Job job,Competency competency){
		System.out.println("CreateJobCompetency");
		try {
			dbconn.connect();
			dbconn.insert("INSERT INTO job_competency (jobId,competencyId) VALUES (" + job.getId() + "," + competency.getId() + ")");
			return "JobCompetency Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Create failed";
	}

	public String DeleteJobCompetency(Job job,Competency competency){
		System.out.println("DeleteJobCompetency");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM job_competency WHERE jobId = " + job.getId() + "AND competencyId = " + competency.getId());
			return "JobCompetency Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Delete failed";
	}
}
