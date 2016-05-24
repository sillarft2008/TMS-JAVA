package webservice_layer;

public class CustomerWebserviceProxy implements webservice_layer.CustomerWebservice {
  private String _endpoint = null;
  private webservice_layer.CustomerWebservice customerWebservice = null;
  
  public CustomerWebserviceProxy() {
    _initCustomerWebserviceProxy();
  }
  
  public CustomerWebserviceProxy(String endpoint) {
    _endpoint = endpoint;
    _initCustomerWebserviceProxy();
  }
  
  private void _initCustomerWebserviceProxy() {
    try {
      customerWebservice = (new webservice_layer.CustomerWebserviceServiceLocator()).getCustomerWebservice();
      if (customerWebservice != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)customerWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)customerWebservice)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (customerWebservice != null)
      ((javax.xml.rpc.Stub)customerWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webservice_layer.CustomerWebservice getCustomerWebservice() {
    if (customerWebservice == null)
      _initCustomerWebserviceProxy();
    return customerWebservice;
  }
  
  public webservice_layer.Customer findCustomer(int customerNo) throws java.rmi.RemoteException{
    if (customerWebservice == null)
      _initCustomerWebserviceProxy();
    return customerWebservice.findCustomer(customerNo);
  }
  
  public java.lang.String updateCustomer(webservice_layer.Customer cust) throws java.rmi.RemoteException{
    if (customerWebservice == null)
      _initCustomerWebserviceProxy();
    return customerWebservice.updateCustomer(cust);
  }
  
  public java.lang.String deleteCustomer(webservice_layer.Customer cust) throws java.rmi.RemoteException{
    if (customerWebservice == null)
      _initCustomerWebserviceProxy();
    return customerWebservice.deleteCustomer(cust);
  }
  
  public java.lang.String createCustomer(webservice_layer.Customer cust) throws java.rmi.RemoteException{
    if (customerWebservice == null)
      _initCustomerWebserviceProxy();
    return customerWebservice.createCustomer(cust);
  }
  
  public webservice_layer.Customer[] findCustomerArray() throws java.rmi.RemoteException{
    if (customerWebservice == null)
      _initCustomerWebserviceProxy();
    return customerWebservice.findCustomerArray();
  }
  
  
}