/**
 * JobWebservice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public interface JobWebservice extends java.rmi.Remote {
    public webservice_layer.Job[] findCustomerJobArray(int customerId) throws java.rmi.RemoteException;
    public webservice_layer.Job[] findJobArray() throws java.rmi.RemoteException;
    public void addCompetency(webservice_layer.Job job, webservice_layer.Competency competency) throws java.rmi.RemoteException;
    public webservice_layer.Job findJob(int jobId) throws java.rmi.RemoteException;
    public void createJob(webservice_layer.Job job) throws java.rmi.RemoteException;
    public java.lang.String deleteJob(webservice_layer.Job job) throws java.rmi.RemoteException;
    public java.lang.String updateJob(webservice_layer.Job job) throws java.rmi.RemoteException;
}
