/**
 * UserWebserviceServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public class UserWebserviceServiceLocator extends org.apache.axis.client.Service implements webservice_layer.UserWebserviceService {

    public UserWebserviceServiceLocator() {
    }


    public UserWebserviceServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public UserWebserviceServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for UserWebservice
    private java.lang.String UserWebservice_address = "http://localhost:8080/TMS/services/UserWebservice";

    public java.lang.String getUserWebserviceAddress() {
        return UserWebservice_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String UserWebserviceWSDDServiceName = "UserWebservice";

    public java.lang.String getUserWebserviceWSDDServiceName() {
        return UserWebserviceWSDDServiceName;
    }

    public void setUserWebserviceWSDDServiceName(java.lang.String name) {
        UserWebserviceWSDDServiceName = name;
    }

    public webservice_layer.UserWebservice getUserWebservice() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(UserWebservice_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getUserWebservice(endpoint);
    }

    public webservice_layer.UserWebservice getUserWebservice(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            webservice_layer.UserWebserviceSoapBindingStub _stub = new webservice_layer.UserWebserviceSoapBindingStub(portAddress, this);
            _stub.setPortName(getUserWebserviceWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setUserWebserviceEndpointAddress(java.lang.String address) {
        UserWebservice_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (webservice_layer.UserWebservice.class.isAssignableFrom(serviceEndpointInterface)) {
                webservice_layer.UserWebserviceSoapBindingStub _stub = new webservice_layer.UserWebserviceSoapBindingStub(new java.net.URL(UserWebservice_address), this);
                _stub.setPortName(getUserWebserviceWSDDServiceName());
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
        if ("UserWebservice".equals(inputPortName)) {
            return getUserWebservice();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://webservice_layer", "UserWebserviceService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://webservice_layer", "UserWebservice"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("UserWebservice".equals(portName)) {
            setUserWebserviceEndpointAddress(address);
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
