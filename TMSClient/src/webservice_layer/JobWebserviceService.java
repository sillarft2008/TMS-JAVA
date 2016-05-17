/**
 * JobWebserviceService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public interface JobWebserviceService extends javax.xml.rpc.Service {
    public java.lang.String getJobWebserviceAddress();

    public webservice_layer.JobWebservice getJobWebservice() throws javax.xml.rpc.ServiceException;

    public webservice_layer.JobWebservice getJobWebservice(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
