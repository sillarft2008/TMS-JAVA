package webservice_layer;

public class JobWebserviceProxy implements webservice_layer.JobWebservice {
  private String _endpoint = null;
  private webservice_layer.JobWebservice jobWebservice = null;
  
  public JobWebserviceProxy() {
    _initJobWebserviceProxy();
  }
  
  public JobWebserviceProxy(String endpoint) {
    _endpoint = endpoint;
    _initJobWebserviceProxy();
  }
  
  private void _initJobWebserviceProxy() {
    try {
      jobWebservice = (new webservice_layer.JobWebserviceServiceLocator()).getJobWebservice();
      if (jobWebservice != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)jobWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)jobWebservice)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (jobWebservice != null)
      ((javax.xml.rpc.Stub)jobWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webservice_layer.JobWebservice getJobWebservice() {
    if (jobWebservice == null)
      _initJobWebserviceProxy();
    return jobWebservice;
  }
  
  public void createJob(webservice_layer.Job job) throws java.rmi.RemoteException{
    if (jobWebservice == null)
      _initJobWebserviceProxy();
    jobWebservice.createJob(job);
  }
  
  public java.lang.String updateJob(webservice_layer.Job job) throws java.rmi.RemoteException{
    if (jobWebservice == null)
      _initJobWebserviceProxy();
    return jobWebservice.updateJob(job);
  }
  
  public java.lang.String deleteJob(webservice_layer.Job job) throws java.rmi.RemoteException{
    if (jobWebservice == null)
      _initJobWebserviceProxy();
    return jobWebservice.deleteJob(job);
  }
  
  public void addCompetency(webservice_layer.Job job, webservice_layer.Competency competency) throws java.rmi.RemoteException{
    if (jobWebservice == null)
      _initJobWebserviceProxy();
    jobWebservice.addCompetency(job, competency);
  }
  
  public webservice_layer.Job[] findJobArray() throws java.rmi.RemoteException{
    if (jobWebservice == null)
      _initJobWebserviceProxy();
    return jobWebservice.findJobArray();
  }
  
  public webservice_layer.Job findJob(int jobId) throws java.rmi.RemoteException{
    if (jobWebservice == null)
      _initJobWebserviceProxy();
    return jobWebservice.findJob(jobId);
  }
  
  public webservice_layer.Job[] findCustomerJobArray(int customerId) throws java.rmi.RemoteException{
    if (jobWebservice == null)
      _initJobWebserviceProxy();
    return jobWebservice.findCustomerJobArray(customerId);
  }
  
  
}