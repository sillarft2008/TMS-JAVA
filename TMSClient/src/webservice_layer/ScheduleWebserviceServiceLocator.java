/**
 * ScheduleWebserviceServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public class ScheduleWebserviceServiceLocator extends org.apache.axis.client.Service implements webservice_layer.ScheduleWebserviceService {

    public ScheduleWebserviceServiceLocator() {
    }


    public ScheduleWebserviceServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public ScheduleWebserviceServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for ScheduleWebservice
    private java.lang.String ScheduleWebservice_address = "http://localhost:8080/TMS/services/ScheduleWebservice";

    public java.lang.String getScheduleWebserviceAddress() {
        return ScheduleWebservice_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String ScheduleWebserviceWSDDServiceName = "ScheduleWebservice";

    public java.lang.String getScheduleWebserviceWSDDServiceName() {
        return ScheduleWebserviceWSDDServiceName;
    }

    public void setScheduleWebserviceWSDDServiceName(java.lang.String name) {
        ScheduleWebserviceWSDDServiceName = name;
    }

    public webservice_layer.ScheduleWebservice getScheduleWebservice() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(ScheduleWebservice_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getScheduleWebservice(endpoint);
    }

    public webservice_layer.ScheduleWebservice getScheduleWebservice(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            webservice_layer.ScheduleWebserviceSoapBindingStub _stub = new webservice_layer.ScheduleWebserviceSoapBindingStub(portAddress, this);
            _stub.setPortName(getScheduleWebserviceWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setScheduleWebserviceEndpointAddress(java.lang.String address) {
        ScheduleWebservice_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (webservice_layer.ScheduleWebservice.class.isAssignableFrom(serviceEndpointInterface)) {
                webservice_layer.ScheduleWebserviceSoapBindingStub _stub = new webservice_layer.ScheduleWebserviceSoapBindingStub(new java.net.URL(ScheduleWebservice_address), this);
                _stub.setPortName(getScheduleWebserviceWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("ScheduleWebservice".equals(inputPortName)) {
            return getScheduleWebservice();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://webservice_layer", "ScheduleWebserviceService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://webservice_layer", "ScheduleWebservice"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("ScheduleWebservice".equals(portName)) {
            setScheduleWebserviceEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
