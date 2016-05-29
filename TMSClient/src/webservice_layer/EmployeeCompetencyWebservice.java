/**
 * EmployeeCompetencyWebservice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public interface EmployeeCompetencyWebservice extends java.rmi.Remote {
    public java.lang.String createEmployeeCompetency(webservice_layer.EmployeeCompetency ec) throws java.rmi.RemoteException;
    public webservice_layer.EmployeeCompetency[] getAllEmployeeCompetencies() throws java.rmi.RemoteException;
    public webservice_layer.EmployeeCompetency[] findAllEmployeeCompetencies(int id) throws java.rmi.RemoteException;
    public java.lang.String updateEmployeeCompetency(webservice_layer.EmployeeCompetency ec) throws java.rmi.RemoteException;
    public java.lang.String deleteEmployeeCompetency(webservice_layer.EmployeeCompetency ec) throws java.rmi.RemoteException;
    public webservice_layer.EmployeeCompetency findEmployeeCompetency(int id) throws java.rmi.RemoteException;
}
