package model_controller;

import java.util.Date;

import data_access_layer.ScheduleSQL;
import data_access_layer.CompetencySQL;
import data_access_layer.EmployeeSQL;
import data_access_layer.JobSQL;
import webservice_layer.Schedule;
import webservice_layer.ScheduleArray;

public class ScheduleController {
	private ScheduleSQL SS = new ScheduleSQL();
	private EmployeeController EC = new EmployeeController();
	private JobController JC = new JobController();
	private CompetencyController CC = new CompetencyController();
	
	public void createSchedule(Schedule schedule){
		SS.CreateSchedule(schedule);
	}
	
	public String deleteSchedule(Schedule schedule){
		return SS.DeleteSchedule(schedule);
	}
	
    public String updateSchedule(Schedule schedule){
    	return SS.UpdateSchedule(schedule);
	} 
    
    public Schedule findSchedule(int scheduleId){
		return SS.FindScheduleById(scheduleId);
	}

    public Schedule[] findScheduleArray(){
		Schedule[] scheduleArray = SS.FindScheduleArray();
    	for (int i=0;i<scheduleArray.length;i++){
    		scheduleArray[i].setEmployee(EC.findEmployee(scheduleArray[i].getEmployee().getId()));
    		scheduleArray[i].setJob(JC.findJob(scheduleArray[i].getJob().getId()));
    		scheduleArray[i].setCompetency(CC.findCompetency(scheduleArray[i].getCompetency().getId()));
    	}
		return scheduleArray;
	}
	
    public Schedule[] FindScheduleArrayByEmployeeDate(int employeeId, Date startTimeDate){
		Schedule[] scheduleArray = SS.FindScheduleArrayByEmployeeDate(employeeId, startTimeDate);
    	for (int i=0;i<scheduleArray.length;i++){
    		scheduleArray[i].setEmployee(EC.findEmployee(scheduleArray[i].getEmployee().getId()));
    		scheduleArray[i].setJob(JC.findJob(scheduleArray[i].getJob().getId()));
    		scheduleArray[i].setCompetency(CC.findCompetency(scheduleArray[i].getCompetency().getId()));
    	}
		return scheduleArray;
	}
    public ScheduleArray findScheduleArrayByDateCompetencyId(Date startTimeDate, int competencyId){
		return SS.FindScheduleArrayByDateCompetencyId(startTimeDate, competencyId);
	}
    
    public ScheduleArray findScheduleArrayByJobId(int jobId){
		return SS.FindScheduleArrayByJobId(jobId);
	}
	
}
