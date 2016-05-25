package webservice_layer;

public class ScheduleWebserviceProxy implements webservice_layer.ScheduleWebservice {
  private String _endpoint = null;
  private webservice_layer.ScheduleWebservice scheduleWebservice = null;
  
  public ScheduleWebserviceProxy() {
    _initScheduleWebserviceProxy();
  }
  
  public ScheduleWebserviceProxy(String endpoint) {
    _endpoint = endpoint;
    _initScheduleWebserviceProxy();
  }
  
  private void _initScheduleWebserviceProxy() {
    try {
      scheduleWebservice = (new webservice_layer.ScheduleWebserviceServiceLocator()).getScheduleWebservice();
      if (scheduleWebservice != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)scheduleWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)scheduleWebservice)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (scheduleWebservice != null)
      ((javax.xml.rpc.Stub)scheduleWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webservice_layer.ScheduleWebservice getScheduleWebservice() {
    if (scheduleWebservice == null)
      _initScheduleWebserviceProxy();
    return scheduleWebservice;
  }
  
  public void createSchedule(webservice_layer.Schedule schedule) throws java.rmi.RemoteException{
    if (scheduleWebservice == null)
      _initScheduleWebserviceProxy();
    scheduleWebservice.createSchedule(schedule);
  }
  
  public java.lang.String deleteSchedule(webservice_layer.Schedule schedule) throws java.rmi.RemoteException{
    if (scheduleWebservice == null)
      _initScheduleWebserviceProxy();
    return scheduleWebservice.deleteSchedule(schedule);
  }
  
  public java.lang.String updateSchedule(webservice_layer.Schedule schedule) throws java.rmi.RemoteException{
    if (scheduleWebservice == null)
      _initScheduleWebserviceProxy();
    return scheduleWebservice.updateSchedule(schedule);
  }
  
  public webservice_layer.Schedule findSchedule(int scheduleId) throws java.rmi.RemoteException{
    if (scheduleWebservice == null)
      _initScheduleWebserviceProxy();
    return scheduleWebservice.findSchedule(scheduleId);
  }
  
  public webservice_layer.Schedule[] findScheduleArray() throws java.rmi.RemoteException{
    if (scheduleWebservice == null)
      _initScheduleWebserviceProxy();
    return scheduleWebservice.findScheduleArray();
  }
  
  public webservice_layer.Schedule[] findScheduleArrayByEmployeeDate(int employeeId, java.util.Calendar startTimeDate) throws java.rmi.RemoteException{
    if (scheduleWebservice == null)
      _initScheduleWebserviceProxy();
    return scheduleWebservice.findScheduleArrayByEmployeeDate(employeeId, startTimeDate);
  }
  
  
}