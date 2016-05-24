/**
 * EmployeeCompetencyWebserviceServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public class EmployeeCompetencyWebserviceServiceLocator extends org.apache.axis.client.Service implements webservice_layer.EmployeeCompetencyWebserviceService {

    public EmployeeCompetencyWebserviceServiceLocator() {
    }


    public EmployeeCompetencyWebserviceServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public EmployeeCompetencyWebserviceServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for EmployeeCompetencyWebservice
    private java.lang.String EmployeeCompetencyWebservice_address = "http://localhost:12131/TMS/services/EmployeeCompetencyWebservice";

    public java.lang.String getEmployeeCompetencyWebserviceAddress() {
        return EmployeeCompetencyWebservice_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String EmployeeCompetencyWebserviceWSDDServiceName = "EmployeeCompetencyWebservice";

    public java.lang.String getEmployeeCompetencyWebserviceWSDDServiceName() {
        return EmployeeCompetencyWebserviceWSDDServiceName;
    }

    public void setEmployeeCompetencyWebserviceWSDDServiceName(java.lang.String name) {
        EmployeeCompetencyWebserviceWSDDServiceName = name;
    }

    public webservice_layer.EmployeeCompetencyWebservice getEmployeeCompetencyWebservice() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(EmployeeCompetencyWebservice_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getEmployeeCompetencyWebservice(endpoint);
    }

    public webservice_layer.EmployeeCompetencyWebservice getEmployeeCompetencyWebservice(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            webservice_layer.EmployeeCompetencyWebserviceSoapBindingStub _stub = new webservice_layer.EmployeeCompetencyWebserviceSoapBindingStub(portAddress, this);
            _stub.setPortName(getEmployeeCompetencyWebserviceWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setEmployeeCompetencyWebserviceEndpointAddress(java.lang.String address) {
        EmployeeCompetencyWebservice_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (webservice_layer.EmployeeCompetencyWebservice.class.isAssignableFrom(serviceEndpointInterface)) {
                webservice_layer.EmployeeCompetencyWebserviceSoapBindingStub _stub = new webservice_layer.EmployeeCompetencyWebserviceSoapBindingStub(new java.net.URL(EmployeeCompetencyWebservice_address), this);
                _stub.setPortName(getEmployeeCompetencyWebserviceWSDDServiceName());
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
        if ("EmployeeCompetencyWebservice".equals(inputPortName)) {
            return getEmployeeCompetencyWebservice();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://webservice_layer", "EmployeeCompetencyWebserviceService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://webservice_layer", "EmployeeCompetencyWebservice"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("EmployeeCompetencyWebservice".equals(portName)) {
            setEmployeeCompetencyWebserviceEndpointAddress(address);
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
