package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import webservice_layer.*;

public class ScheduleSQL {
	DBConnect dbconn = new DBConnect();
	
	public Schedule[] FindScheduleArray(){
			
		System.out.println("FindSchedules");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM schedule");
			rs.next();
			int count = rs.getInt("result");
			Schedule[] scheduleArray = new Schedule[count];
			
			ResultSet rs2 = dbconn.select("SELECT Id,employeeId,jobId,itemId,competencyId,startTimeDate,duration FROM schedule");
			int i = 0;
			while (rs2.next()){
				Schedule schedule = new Schedule();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("employeeId=" + rs2.getString("employeeId"));
				System.out.println("jobId=" + rs2.getString("jobId"));
				System.out.println("competencyId=" + rs2.getInt("competencyId"));		
				System.out.println("itemId=" + rs2.getString("itemId"));	
				System.out.println("startTimeDate=" + rs2.getString("startTimeDate"));		
				System.out.println("duration=" + rs2.getString("duration"));		
				Employee employee = new Employee();
				employee.setId(rs2.getInt("employeeId"));
				Job job = new Job();
				job.setId(rs2.getInt("jobId"));
				Competency competency = new Competency();
				competency.setId(rs2.getInt("competencyId"));
				Item item = new Item();
				item.setId(rs2.getInt("itemId"));
				schedule.setId(rs2.getInt("Id"));
				schedule.setEmployee(employee);
				schedule.setJob(job);
				schedule.setItem(item);
				schedule.setCompetency(competency);
				schedule.setStartTimeDate(rs2.getDate("startTimeDate"));
				schedule.setDuration(rs2.getDate("duration"));
				scheduleArray[i] = schedule;
				i++;
			}	
			dbconn.close();
			return scheduleArray;
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	
	public Schedule[] FindScheduleArrayByEmployeeDate(int employeeId, Date startTimeDate){
			
		System.out.println("FindScheduleArrayByEmployeeDate");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM schedule WHERE employeeId = " + employeeId + " AND Date(startTimeDate) = '" + dbconn.convertDate(startTimeDate) + "'");
			rs.next();
			int count = rs.getInt("result");
			Schedule[] scheduleArray = new Schedule[count];
			
			ResultSet rs2 = dbconn.select("SELECT Id,employeeId,jobId,competencyId,startTimeDate,duration FROM schedule WHERE employeeId = " + employeeId + " AND Date(startTimeDate) = '" + dbconn.convertDate(startTimeDate) + "' ORDER BY startTimeDate");
			int i = 0;
			while (rs2.next()){
				Schedule schedule = new Schedule();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("employeeId=" + rs2.getString("employeeId"));
				System.out.println("jobId=" + rs2.getString("jobId"));
				System.out.println("competencyId=" + rs2.getInt("competencyId"));		
				System.out.println("startTimeDate=" + rs2.getString("startTimeDate"));		
				System.out.println("duration=" + rs2.getString("duration"));		
				Employee employee = new Employee();
				employee.setId(rs2.getInt("employeeId"));
				Job job = new Job();
				job.setId(rs2.getInt("jobId"));
				Competency competency = new Competency();
				competency.setId(rs2.getInt("competencyId"));
				Item item = new Item();
				schedule.setId(rs2.getInt("Id"));
				schedule.setEmployee(employee);
				schedule.setJob(job);
				schedule.setCompetency(competency);
				schedule.setStartTimeDate(rs2.getTimestamp("startTimeDate"));
				schedule.setDuration(rs2.getTime("duration"));
				scheduleArray[i] = schedule;
				i++;
			}	
			dbconn.close();
			return scheduleArray;
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	
	public ScheduleArray FindScheduleArrayByJobId(int jobId){
		
		System.out.println("FindScheduleArrayByJobId");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM schedule where jobId = " + jobId);
			rs.next();
			int count = rs.getInt("result");
			ScheduleArray scheduleArray = new ScheduleArray(count);
			
			ResultSet rs2 = dbconn.select("Id,employeeId,jobId,competencyId,startTimeDate,duration FROM schedule where jobId = " + jobId);
			
			while (rs2.next()){
				Schedule schedule = new Schedule();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("employeeId=" + rs2.getString("employeeId"));
				System.out.println("jobId=" + rs2.getString("jobId"));
				System.out.println("competencyId=" + rs2.getInt("competencyId"));		
				System.out.println("startTimeDate=" + rs2.getString("startTimeDate"));		
				System.out.println("duration=" + rs2.getString("duration"));		
				Employee employee = new Employee();
				employee.setId(rs2.getInt("employeeId"));
				Job job = new Job();
				job.setId(rs2.getInt("jobId"));
				Competency competency = new Competency();
				competency.setId(rs2.getInt("competencyId"));
				Item item = new Item();
				schedule.setId(rs2.getInt("Id"));
				schedule.setEmployee(employee);
				schedule.setJob(job);
				schedule.setCompetency(competency);
				schedule.setStartTimeDate(rs2.getDate("startTimeDate"));
				schedule.setDuration(rs2.getDate("duration"));
				scheduleArray.addSchedule(schedule);
			}	
			dbconn.close();
			return scheduleArray;
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}

	public ScheduleArray FindScheduleArrayByDateCompetencyId(Date startTimeDate,int competencyId){
		
		System.out.println("FindScheduleArrayByDateCompetencyId");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM schedule where competencyId = " + competencyId + " AND startTimeDate = '" + startTimeDate + "'" );
			rs.next();
			int count = rs.getInt("result");
			ScheduleArray scheduleArray = new ScheduleArray(count);
			
			ResultSet rs2 = dbconn.select("Id,employeeId,jobId,competencyId,startTimeDate,duration FROM schedule where competencyId = " + competencyId + " AND startTimeDate = '" + startTimeDate + "'" );
			
			while (rs2.next()){
				Schedule schedule = new Schedule();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("employeeId=" + rs2.getString("employeeId"));
				System.out.println("jobId=" + rs2.getString("jobId"));
				System.out.println("competencyId=" + rs2.getInt("competencyId"));		
				System.out.println("startTimeDate=" + rs2.getString("startTimeDate"));		
				System.out.println("duration=" + rs2.getString("duration"));		
				Employee employee = new Employee();
				employee.setId(rs2.getInt("employeeId"));
				Job job = new Job();
				job.setId(rs2.getInt("jobId"));
				Competency competency = new Competency();
				competency.setId(rs2.getInt("competencyId"));
				Item item = new Item();
				schedule.setId(rs2.getInt("Id"));
				schedule.setEmployee(employee);
				schedule.setJob(job);
				schedule.setCompetency(competency);
				schedule.setStartTimeDate(rs2.getDate("startTimeDate"));
				schedule.setDuration(rs2.getDate("duration"));
				scheduleArray.addSchedule(schedule);
			}	
			dbconn.close();
			return scheduleArray;
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}

	public Schedule FindScheduleById(int Id){
		System.out.println("FindScheduleById");
		Schedule schedule = new Schedule();
		try {
			dbconn.connect();
			ResultSet rs2 = dbconn.select("Id,employeeId,jobId,competencyId,startTimeDate,duration FROM schedule WHERE id = " + Id);
			rs2.next();
			System.out.println("Id=" + rs2.getInt("Id"));
			System.out.println("employeeId=" + rs2.getString("employeeId"));
			System.out.println("jobId=" + rs2.getString("jobId"));
			System.out.println("competencyId=" + rs2.getInt("competencyId"));		
			System.out.println("startTimeDate=" + rs2.getString("startTimeDate"));		
			System.out.println("duration=" + rs2.getString("duration"));		
			Employee employee = new Employee();
			employee.setId(rs2.getInt("employeeId"));
			Job job = new Job();
			job.setId(rs2.getInt("jobId"));
			Competency competency = new Competency();
			competency.setId(rs2.getInt("competencyId"));
			Item item = new Item();
			schedule.setId(rs2.getInt("Id"));
			schedule.setEmployee(employee);
			schedule.setJob(job);
			schedule.setCompetency(competency);
			schedule.setStartTimeDate(rs2.getDate("startTimeDate"));
			schedule.setDuration(rs2.getDate("duration"));
			dbconn.close();
			return schedule;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}		
	}
	
	public String CreateSchedule(Schedule schedule){
		System.out.println("CreateSchedule");
		try {
			if (schedule.getId() == 0){
			
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT MAX(Id) as result FROM schedule");
			rs.next();
			int count = rs.getInt("result");
			schedule.setId(count + 1);
			}
			
			dbconn.insert("INSERT INTO schedule (Id,employeeId,jobId,competencyId,startTimeDate,duration) VALUES (" + schedule.getId() + "," + schedule.getEmployee().getId() + "," + schedule.getJob().getId() + "," + schedule.getItem().getId() + "," + schedule.getCompetency().getId() + ",'" + dbconn.convertDateTime(schedule.getStartTimeDate()) + "','" + dbconn.convertDateTime(schedule.getDuration()) + "')");
			dbconn.close();
			return "Schedule Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "CreateSchedule failed";
	}

	public String DeleteSchedule(Schedule schedule){
		System.out.println("DeleteSchedule");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM schedule WHERE Id =" + schedule.getId());
			dbconn.close();
			return "Schedule Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "DeleteSchedule failed";
	}

	public String UpdateSchedule(Schedule schedule){
		System.out.println("UdateSchedule");
		try {
			dbconn.connect();
			dbconn.update("UPDATE schedule SET employeeId = " + schedule.getEmployee().getId() +  ",jobId = " + schedule.getJob().getId() +  ",competencyId = " + schedule.getCompetency().getId() +  ",startTimeDate = '" + dbconn.convertDateTime(schedule.getStartTimeDate()) +  "',duration = '" + dbconn.convertDateTime(schedule.getDuration()) +  "' WHERE Id = " + schedule.getId());
			dbconn.close();
			return "Schedule Updated";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "UpdateSchedule failed";
	}	
}



