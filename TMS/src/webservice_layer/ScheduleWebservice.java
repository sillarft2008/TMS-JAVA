package webservice_layer;

import java.util.Date;

import model_controller.ScheduleController;

public class ScheduleWebservice {
	private ScheduleController SC = new ScheduleController();
	
	public void createSchedule(Schedule schedule){
		SC.createSchedule(schedule);
	}
	
	public String deleteSchedule(Schedule schedule){
		return SC.deleteSchedule(schedule);
	}
	
	public String updateSchedule(Schedule schedule){
		return SC.updateSchedule(schedule);
	}

	public Schedule findSchedule(int scheduleId){
		return SC.findSchedule(scheduleId);
	}
	
	public Schedule[] findScheduleArray(){
		return SC.findScheduleArray();
	}
	
	public Schedule[] findScheduleArrayByEmployeeDate(int employeeId, Date startTimeDate){
		return SC.FindScheduleArrayByEmployeeDate(employeeId, startTimeDate);
	}
	
    //public ScheduleArray findScheduleArrayByDateCompetencyId(Date startTimeDate, int competencyId){
	//	return SC.findScheduleArrayByDateCompetencyId(startTimeDate, competencyId);
	//}
    
    //public ScheduleArray findScheduleArrayByJobId(int jobId){
	//	return SC.findScheduleArrayByJobId(jobId);
	//}
	
	
}
