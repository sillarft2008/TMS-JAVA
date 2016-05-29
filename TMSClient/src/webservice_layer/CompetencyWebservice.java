/**
 * CompetencyWebservice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public interface CompetencyWebservice extends java.rmi.Remote {
    public java.lang.String deleteCompetency(webservice_layer.Competency competency) throws java.rmi.RemoteException;
    public java.lang.String updateCompetency(webservice_layer.Competency competency) throws java.rmi.RemoteException;
    public java.lang.String createCompetency(webservice_layer.Competency competency) throws java.rmi.RemoteException;
    public webservice_layer.Competency findCompetency(int id) throws java.rmi.RemoteException;
    public webservice_layer.Competency[] getAllCompetencies() throws java.rmi.RemoteException;
}
