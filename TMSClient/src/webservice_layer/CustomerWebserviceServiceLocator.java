/**
 * CustomerWebserviceServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public class CustomerWebserviceServiceLocator extends org.apache.axis.client.Service implements webservice_layer.CustomerWebserviceService {

    public CustomerWebserviceServiceLocator() {
    }


    public CustomerWebserviceServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public CustomerWebserviceServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for CustomerWebservice
    private java.lang.String CustomerWebservice_address = "http://localhost:12131/TMS/services/CustomerWebservice";

    public java.lang.String getCustomerWebserviceAddress() {
        return CustomerWebservice_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String CustomerWebserviceWSDDServiceName = "CustomerWebservice";

    public java.lang.String getCustomerWebserviceWSDDServiceName() {
        return CustomerWebserviceWSDDServiceName;
    }

    public void setCustomerWebserviceWSDDServiceName(java.lang.String name) {
        CustomerWebserviceWSDDServiceName = name;
    }

    public webservice_layer.CustomerWebservice getCustomerWebservice() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(CustomerWebservice_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getCustomerWebservice(endpoint);
    }

    public webservice_layer.CustomerWebservice getCustomerWebservice(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            webservice_layer.CustomerWebserviceSoapBindingStub _stub = new webservice_layer.CustomerWebserviceSoapBindingStub(portAddress, this);
            _stub.setPortName(getCustomerWebserviceWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setCustomerWebserviceEndpointAddress(java.lang.String address) {
        CustomerWebservice_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (webservice_layer.CustomerWebservice.class.isAssignableFrom(serviceEndpointInterface)) {
                webservice_layer.CustomerWebserviceSoapBindingStub _stub = new webservice_layer.CustomerWebserviceSoapBindingStub(new java.net.URL(CustomerWebservice_address), this);
                _stub.setPortName(getCustomerWebserviceWSDDServiceName());
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
        if ("CustomerWebservice".equals(inputPortName)) {
            return getCustomerWebservice();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://webservice_layer", "CustomerWebserviceService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://webservice_layer", "CustomerWebservice"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("CustomerWebservice".equals(portName)) {
            setCustomerWebserviceEndpointAddress(address);
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
