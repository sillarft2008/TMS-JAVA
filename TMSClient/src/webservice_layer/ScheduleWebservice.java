/**
 * ScheduleWebservice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public interface ScheduleWebservice extends java.rmi.Remote {
    public java.lang.String deleteSchedule(webservice_layer.Schedule schedule) throws java.rmi.RemoteException;
    public java.lang.String updateSchedule(webservice_layer.Schedule schedule) throws java.rmi.RemoteException;
    public webservice_layer.Schedule findSchedule(int scheduleId) throws java.rmi.RemoteException;
    public void createSchedule(webservice_layer.Schedule schedule) throws java.rmi.RemoteException;
    public webservice_layer.Schedule[] findScheduleArrayByEmployeeDate(int employeeId, java.util.Calendar startTimeDate) throws java.rmi.RemoteException;
    public webservice_layer.Schedule[] findScheduleArray() throws java.rmi.RemoteException;
}
