package webservice_layer;

public class EmployeeWebserviceProxy implements webservice_layer.EmployeeWebservice {
  private String _endpoint = null;
  private webservice_layer.EmployeeWebservice employeeWebservice = null;
  
  public EmployeeWebserviceProxy() {
    _initEmployeeWebserviceProxy();
  }
  
  public EmployeeWebserviceProxy(String endpoint) {
    _endpoint = endpoint;
    _initEmployeeWebserviceProxy();
  }
  
  private void _initEmployeeWebserviceProxy() {
    try {
      employeeWebservice = (new webservice_layer.EmployeeWebserviceServiceLocator()).getEmployeeWebservice();
      if (employeeWebservice != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)employeeWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)employeeWebservice)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (employeeWebservice != null)
      ((javax.xml.rpc.Stub)employeeWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webservice_layer.EmployeeWebservice getEmployeeWebservice() {
    if (employeeWebservice == null)
      _initEmployeeWebserviceProxy();
    return employeeWebservice;
  }
  
  public java.lang.String updateEmployee(webservice_layer.Employee employee) throws java.rmi.RemoteException{
    if (employeeWebservice == null)
      _initEmployeeWebserviceProxy();
    return employeeWebservice.updateEmployee(employee);
  }
  
  public webservice_layer.Employee findEmployee(int id) throws java.rmi.RemoteException{
    if (employeeWebservice == null)
      _initEmployeeWebserviceProxy();
    return employeeWebservice.findEmployee(id);
  }
  
  public webservice_layer.Employee[] getAllEmployees() throws java.rmi.RemoteException{
    if (employeeWebservice == null)
      _initEmployeeWebserviceProxy();
    return employeeWebservice.getAllEmployees();
  }
  
  public java.lang.String deleteEmployee(webservice_layer.Employee employee) throws java.rmi.RemoteException{
    if (employeeWebservice == null)
      _initEmployeeWebserviceProxy();
    return employeeWebservice.deleteEmployee(employee);
  }
  
  public java.lang.String createEmployee(webservice_layer.Employee employee) throws java.rmi.RemoteException{
    if (employeeWebservice == null)
      _initEmployeeWebserviceProxy();
    return employeeWebservice.createEmployee(employee);
  }
  
  
}