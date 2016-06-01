package webservice_layer;

public class UserWebserviceProxy implements webservice_layer.UserWebservice {
  private String _endpoint = null;
  private webservice_layer.UserWebservice userWebservice = null;
  
  public UserWebserviceProxy() {
    _initUserWebserviceProxy();
  }
  
  public UserWebserviceProxy(String endpoint) {
    _endpoint = endpoint;
    _initUserWebserviceProxy();
  }
  
  private void _initUserWebserviceProxy() {
    try {
      userWebservice = (new webservice_layer.UserWebserviceServiceLocator()).getUserWebservice();
      if (userWebservice != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)userWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)userWebservice)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (userWebservice != null)
      ((javax.xml.rpc.Stub)userWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webservice_layer.UserWebservice getUserWebservice() {
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice;
  }
  
  public java.lang.String createUser(webservice_layer.User user) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.createUser(user);
  }
  
  public webservice_layer.User[] findUserArray() throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.findUserArray();
  }
  
  public webservice_layer.Role[] findRoleByUserId(java.lang.String userId) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.findRoleByUserId(userId);
  }
  
  public void addRole(webservice_layer.UserRole ur) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    userWebservice.addRole(ur);
  }
  
  public webservice_layer.User selectUserByName(java.lang.String name) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.selectUserByName(name);
  }
  
  public java.lang.String createUserRole(webservice_layer.UserRole ur) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.createUserRole(ur);
  }
  
  public java.lang.String deleteUser(java.lang.String id) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.deleteUser(id);
  }
  
  public java.lang.String deleteUserRoles(java.lang.String userId) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.deleteUserRoles(userId);
  }
  
  public webservice_layer.User selectUserById(java.lang.String id) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.selectUserById(id);
  }
  
  public webservice_layer.Role[] getAllRoles() throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.getAllRoles();
  }
  
  public java.lang.String updateUser(webservice_layer.User user) throws java.rmi.RemoteException{
    if (userWebservice == null)
      _initUserWebserviceProxy();
    return userWebservice.updateUser(user);
  }
  
  
}