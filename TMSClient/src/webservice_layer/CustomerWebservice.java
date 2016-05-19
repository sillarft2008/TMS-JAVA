/**
 * CustomerWebservice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public interface CustomerWebservice extends java.rmi.Remote {
    public webservice_layer.Customer[] findCustomerArray() throws java.rmi.RemoteException;
    public java.lang.String createCustomer(webservice_layer.Customer cust) throws java.rmi.RemoteException;
    public webservice_layer.Customer findCustomer(int customerNo) throws java.rmi.RemoteException;
    public java.lang.String deleteCustomer(webservice_layer.Customer cust) throws java.rmi.RemoteException;
    public java.lang.String updateCustomer(webservice_layer.Customer cust) throws java.rmi.RemoteException;
}
