package webservice_layer;

public class EmployeeCompetencyWebserviceProxy implements webservice_layer.EmployeeCompetencyWebservice {
  private String _endpoint = null;
  private webservice_layer.EmployeeCompetencyWebservice employeeCompetencyWebservice = null;
  
  public EmployeeCompetencyWebserviceProxy() {
    _initEmployeeCompetencyWebserviceProxy();
  }
  
  public EmployeeCompetencyWebserviceProxy(String endpoint) {
    _endpoint = endpoint;
    _initEmployeeCompetencyWebserviceProxy();
  }
  
  private void _initEmployeeCompetencyWebserviceProxy() {
    try {
      employeeCompetencyWebservice = (new webservice_layer.EmployeeCompetencyWebserviceServiceLocator()).getEmployeeCompetencyWebservice();
      if (employeeCompetencyWebservice != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)employeeCompetencyWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)employeeCompetencyWebservice)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (employeeCompetencyWebservice != null)
      ((javax.xml.rpc.Stub)employeeCompetencyWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webservice_layer.EmployeeCompetencyWebservice getEmployeeCompetencyWebservice() {
    if (employeeCompetencyWebservice == null)
      _initEmployeeCompetencyWebserviceProxy();
    return employeeCompetencyWebservice;
  }
  
  public java.lang.String createEmployeeCompetency(webservice_layer.EmployeeCompetency ec) throws java.rmi.RemoteException{
    if (employeeCompetencyWebservice == null)
      _initEmployeeCompetencyWebserviceProxy();
    return employeeCompetencyWebservice.createEmployeeCompetency(ec);
  }
  
  public java.lang.String deleteEmployeeCompetency(webservice_layer.EmployeeCompetency ec) throws java.rmi.RemoteException{
    if (employeeCompetencyWebservice == null)
      _initEmployeeCompetencyWebserviceProxy();
    return employeeCompetencyWebservice.deleteEmployeeCompetency(ec);
  }
  
  public webservice_layer.EmployeeCompetency[] getAllEmployeeCompetencies() throws java.rmi.RemoteException{
    if (employeeCompetencyWebservice == null)
      _initEmployeeCompetencyWebserviceProxy();
    return employeeCompetencyWebservice.getAllEmployeeCompetencies();
  }
  
  public java.lang.String updateEmployeeCompetency(webservice_layer.EmployeeCompetency ec) throws java.rmi.RemoteException{
    if (employeeCompetencyWebservice == null)
      _initEmployeeCompetencyWebserviceProxy();
    return employeeCompetencyWebservice.updateEmployeeCompetency(ec);
  }
  
  public webservice_layer.EmployeeCompetency[] findAllEmployeeCompetencies(int id) throws java.rmi.RemoteException{
    if (employeeCompetencyWebservice == null)
      _initEmployeeCompetencyWebserviceProxy();
    return employeeCompetencyWebservice.findAllEmployeeCompetencies(id);
  }
  
  public webservice_layer.EmployeeCompetency findEmployeeCompetency(int id) throws java.rmi.RemoteException{
    if (employeeCompetencyWebservice == null)
      _initEmployeeCompetencyWebserviceProxy();
    return employeeCompetencyWebservice.findEmployeeCompetency(id);
  }
  
  
}