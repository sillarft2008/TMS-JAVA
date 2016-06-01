/**
 * EmployeeWebservice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public interface EmployeeWebservice extends java.rmi.Remote {
    public webservice_layer.Employee findEmployee(int id) throws java.rmi.RemoteException;
    public java.lang.String deleteEmployee(webservice_layer.Employee employee) throws java.rmi.RemoteException;
    public java.lang.String updateEmployee(webservice_layer.Employee employee) throws java.rmi.RemoteException;
    public java.lang.String createEmployee(webservice_layer.Employee employee) throws java.rmi.RemoteException;
    public webservice_layer.Employee[] getAllEmployees() throws java.rmi.RemoteException;
}
