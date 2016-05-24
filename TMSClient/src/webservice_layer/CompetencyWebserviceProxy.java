package webservice_layer;

public class CompetencyWebserviceProxy implements webservice_layer.CompetencyWebservice {
  private String _endpoint = null;
  private webservice_layer.CompetencyWebservice competencyWebservice = null;
  
  public CompetencyWebserviceProxy() {
    _initCompetencyWebserviceProxy();
  }
  
  public CompetencyWebserviceProxy(String endpoint) {
    _endpoint = endpoint;
    _initCompetencyWebserviceProxy();
  }
  
  private void _initCompetencyWebserviceProxy() {
    try {
      competencyWebservice = (new webservice_layer.CompetencyWebserviceServiceLocator()).getCompetencyWebservice();
      if (competencyWebservice != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)competencyWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)competencyWebservice)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (competencyWebservice != null)
      ((javax.xml.rpc.Stub)competencyWebservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webservice_layer.CompetencyWebservice getCompetencyWebservice() {
    if (competencyWebservice == null)
      _initCompetencyWebserviceProxy();
    return competencyWebservice;
  }
  
  public java.lang.String deleteCompetency(webservice_layer.Competency competency) throws java.rmi.RemoteException{
    if (competencyWebservice == null)
      _initCompetencyWebserviceProxy();
    return competencyWebservice.deleteCompetency(competency);
  }
  
  public webservice_layer.Competency findCompetency(int id) throws java.rmi.RemoteException{
    if (competencyWebservice == null)
      _initCompetencyWebserviceProxy();
    return competencyWebservice.findCompetency(id);
  }
  
  public java.lang.String createCompetency(webservice_layer.Competency competency) throws java.rmi.RemoteException{
    if (competencyWebservice == null)
      _initCompetencyWebserviceProxy();
    return competencyWebservice.createCompetency(competency);
  }
  
  public java.lang.String updateCompetency(webservice_layer.Competency competency) throws java.rmi.RemoteException{
    if (competencyWebservice == null)
      _initCompetencyWebserviceProxy();
    return competencyWebservice.updateCompetency(competency);
  }
  
  public webservice_layer.Competency[] getAllCompetencies() throws java.rmi.RemoteException{
    if (competencyWebservice == null)
      _initCompetencyWebserviceProxy();
    return competencyWebservice.getAllCompetencies();
  }
  
  
}