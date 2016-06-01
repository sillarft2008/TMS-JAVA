/**
 * UserWebservice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public interface UserWebservice extends java.rmi.Remote {
    public java.lang.String createUser(webservice_layer.User user) throws java.rmi.RemoteException;
    public webservice_layer.User[] findUserArray() throws java.rmi.RemoteException;
    public webservice_layer.Role[] findRoleByUserId(java.lang.String userId) throws java.rmi.RemoteException;
    public void addRole(webservice_layer.UserRole ur) throws java.rmi.RemoteException;
    public webservice_layer.User selectUserByName(java.lang.String name) throws java.rmi.RemoteException;
    public java.lang.String createUserRole(webservice_layer.UserRole ur) throws java.rmi.RemoteException;
    public java.lang.String deleteUser(java.lang.String id) throws java.rmi.RemoteException;
    public java.lang.String deleteUserRoles(java.lang.String userId) throws java.rmi.RemoteException;
    public webservice_layer.User selectUserById(java.lang.String id) throws java.rmi.RemoteException;
    public webservice_layer.Role[] getAllRoles() throws java.rmi.RemoteException;
    public java.lang.String updateUser(webservice_layer.User user) throws java.rmi.RemoteException;
}
