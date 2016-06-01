<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleUserWebserviceProxyid" scope="session" class="webservice_layer.UserWebserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleUserWebserviceProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleUserWebserviceProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleUserWebserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservice_layer.UserWebservice getUserWebservice10mtemp = sampleUserWebserviceProxyid.getUserWebservice();
if(getUserWebservice10mtemp == null){
%>
<%=getUserWebservice10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String securityStamp_2id=  request.getParameter("securityStamp20");
            java.lang.String securityStamp_2idTemp = null;
        if(!securityStamp_2id.equals("")){
         securityStamp_2idTemp  = securityStamp_2id;
        }
        String password_3id=  request.getParameter("password22");
            java.lang.String password_3idTemp = null;
        if(!password_3id.equals("")){
         password_3idTemp  = password_3id;
        }
        String username_4id=  request.getParameter("username24");
            java.lang.String username_4idTemp = null;
        if(!username_4id.equals("")){
         username_4idTemp  = username_4id;
        }
        String id_5id=  request.getParameter("id26");
            java.lang.String id_5idTemp = null;
        if(!id_5id.equals("")){
         id_5idTemp  = id_5id;
        }
        %>
        <jsp:useBean id="webservice_layer1User_1id" scope="session" class="webservice_layer.User" />
        <%
        webservice_layer1User_1id.setSecurityStamp(securityStamp_2idTemp);
        webservice_layer1User_1id.setPassword(password_3idTemp);
        webservice_layer1User_1id.setUsername(username_4idTemp);
        webservice_layer1User_1id.setId(id_5idTemp);
        java.lang.String createUser15mtemp = sampleUserWebserviceProxyid.createUser(webservice_layer1User_1id);
if(createUser15mtemp == null){
%>
<%=createUser15mtemp %>
<%
}else{
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createUser15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
}
break;
case 28:
        gotMethod = true;
        webservice_layer.User[] findUserArray28mtemp = sampleUserWebserviceProxyid.findUserArray();
if(findUserArray28mtemp == null){
%>
<%=findUserArray28mtemp %>
<%
}else{
        String tempreturnp29 = null;
        if(findUserArray28mtemp != null){
        java.util.List listreturnp29= java.util.Arrays.asList(findUserArray28mtemp);
        tempreturnp29 = listreturnp29.toString();
        }
        %>
        <%=tempreturnp29%>
        <%
}
break;
case 31:
        gotMethod = true;
        String userId_6id=  request.getParameter("userId34");
            java.lang.String userId_6idTemp = null;
        if(!userId_6id.equals("")){
         userId_6idTemp  = userId_6id;
        }
        webservice_layer.Role[] findRoleByUserId31mtemp = sampleUserWebserviceProxyid.findRoleByUserId(userId_6idTemp);
if(findRoleByUserId31mtemp == null){
%>
<%=findRoleByUserId31mtemp %>
<%
}else{
        String tempreturnp32 = null;
        if(findRoleByUserId31mtemp != null){
        java.util.List listreturnp32= java.util.Arrays.asList(findRoleByUserId31mtemp);
        tempreturnp32 = listreturnp32.toString();
        }
        %>
        <%=tempreturnp32%>
        <%
}
break;
case 36:
        gotMethod = true;
        String roleId_8id=  request.getParameter("roleId41");
            java.lang.String roleId_8idTemp = null;
        if(!roleId_8id.equals("")){
         roleId_8idTemp  = roleId_8id;
        }
        String userId_9id=  request.getParameter("userId43");
            java.lang.String userId_9idTemp = null;
        if(!userId_9id.equals("")){
         userId_9idTemp  = userId_9id;
        }
        %>
        <jsp:useBean id="webservice_layer1UserRole_7id" scope="session" class="webservice_layer.UserRole" />
        <%
        webservice_layer1UserRole_7id.setRoleId(roleId_8idTemp);
        webservice_layer1UserRole_7id.setUserId(userId_9idTemp);
        sampleUserWebserviceProxyid.addRole(webservice_layer1UserRole_7id);
break;
case 45:
        gotMethod = true;
        String name_10id=  request.getParameter("name56");
            java.lang.String name_10idTemp = null;
        if(!name_10id.equals("")){
         name_10idTemp  = name_10id;
        }
        webservice_layer.User selectUserByName45mtemp = sampleUserWebserviceProxyid.selectUserByName(name_10idTemp);
if(selectUserByName45mtemp == null){
%>
<%=selectUserByName45mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">securityStamp:</TD>
<TD>
<%
if(selectUserByName45mtemp != null){
java.lang.String typesecurityStamp48 = selectUserByName45mtemp.getSecurityStamp();
        String tempResultsecurityStamp48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesecurityStamp48));
        %>
        <%= tempResultsecurityStamp48 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(selectUserByName45mtemp != null){
java.lang.String typepassword50 = selectUserByName45mtemp.getPassword();
        String tempResultpassword50 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword50));
        %>
        <%= tempResultpassword50 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">username:</TD>
<TD>
<%
if(selectUserByName45mtemp != null){
java.lang.String typeusername52 = selectUserByName45mtemp.getUsername();
        String tempResultusername52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeusername52));
        %>
        <%= tempResultusername52 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(selectUserByName45mtemp != null){
java.lang.String typeid54 = selectUserByName45mtemp.getId();
        String tempResultid54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid54));
        %>
        <%= tempResultid54 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 58:
        gotMethod = true;
        String roleId_12id=  request.getParameter("roleId63");
            java.lang.String roleId_12idTemp = null;
        if(!roleId_12id.equals("")){
         roleId_12idTemp  = roleId_12id;
        }
        String userId_13id=  request.getParameter("userId65");
            java.lang.String userId_13idTemp = null;
        if(!userId_13id.equals("")){
         userId_13idTemp  = userId_13id;
        }
        %>
        <jsp:useBean id="webservice_layer1UserRole_11id" scope="session" class="webservice_layer.UserRole" />
        <%
        webservice_layer1UserRole_11id.setRoleId(roleId_12idTemp);
        webservice_layer1UserRole_11id.setUserId(userId_13idTemp);
        java.lang.String createUserRole58mtemp = sampleUserWebserviceProxyid.createUserRole(webservice_layer1UserRole_11id);
if(createUserRole58mtemp == null){
%>
<%=createUserRole58mtemp %>
<%
}else{
        String tempResultreturnp59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createUserRole58mtemp));
        %>
        <%= tempResultreturnp59 %>
        <%
}
break;
case 67:
        gotMethod = true;
        String id_14id=  request.getParameter("id70");
            java.lang.String id_14idTemp = null;
        if(!id_14id.equals("")){
         id_14idTemp  = id_14id;
        }
        java.lang.String deleteUser67mtemp = sampleUserWebserviceProxyid.deleteUser(id_14idTemp);
if(deleteUser67mtemp == null){
%>
<%=deleteUser67mtemp %>
<%
}else{
        String tempResultreturnp68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUser67mtemp));
        %>
        <%= tempResultreturnp68 %>
        <%
}
break;
case 72:
        gotMethod = true;
        String userId_15id=  request.getParameter("userId75");
            java.lang.String userId_15idTemp = null;
        if(!userId_15id.equals("")){
         userId_15idTemp  = userId_15id;
        }
        java.lang.String deleteUserRoles72mtemp = sampleUserWebserviceProxyid.deleteUserRoles(userId_15idTemp);
if(deleteUserRoles72mtemp == null){
%>
<%=deleteUserRoles72mtemp %>
<%
}else{
        String tempResultreturnp73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserRoles72mtemp));
        %>
        <%= tempResultreturnp73 %>
        <%
}
break;
case 77:
        gotMethod = true;
        String id_16id=  request.getParameter("id88");
            java.lang.String id_16idTemp = null;
        if(!id_16id.equals("")){
         id_16idTemp  = id_16id;
        }
        webservice_layer.User selectUserById77mtemp = sampleUserWebserviceProxyid.selectUserById(id_16idTemp);
if(selectUserById77mtemp == null){
%>
<%=selectUserById77mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">securityStamp:</TD>
<TD>
<%
if(selectUserById77mtemp != null){
java.lang.String typesecurityStamp80 = selectUserById77mtemp.getSecurityStamp();
        String tempResultsecurityStamp80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesecurityStamp80));
        %>
        <%= tempResultsecurityStamp80 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(selectUserById77mtemp != null){
java.lang.String typepassword82 = selectUserById77mtemp.getPassword();
        String tempResultpassword82 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword82));
        %>
        <%= tempResultpassword82 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">username:</TD>
<TD>
<%
if(selectUserById77mtemp != null){
java.lang.String typeusername84 = selectUserById77mtemp.getUsername();
        String tempResultusername84 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeusername84));
        %>
        <%= tempResultusername84 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(selectUserById77mtemp != null){
java.lang.String typeid86 = selectUserById77mtemp.getId();
        String tempResultid86 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid86));
        %>
        <%= tempResultid86 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 90:
        gotMethod = true;
        webservice_layer.Role[] getAllRoles90mtemp = sampleUserWebserviceProxyid.getAllRoles();
if(getAllRoles90mtemp == null){
%>
<%=getAllRoles90mtemp %>
<%
}else{
        String tempreturnp91 = null;
        if(getAllRoles90mtemp != null){
        java.util.List listreturnp91= java.util.Arrays.asList(getAllRoles90mtemp);
        tempreturnp91 = listreturnp91.toString();
        }
        %>
        <%=tempreturnp91%>
        <%
}
break;
case 93:
        gotMethod = true;
        String securityStamp_18id=  request.getParameter("securityStamp98");
            java.lang.String securityStamp_18idTemp = null;
        if(!securityStamp_18id.equals("")){
         securityStamp_18idTemp  = securityStamp_18id;
        }
        String password_19id=  request.getParameter("password100");
            java.lang.String password_19idTemp = null;
        if(!password_19id.equals("")){
         password_19idTemp  = password_19id;
        }
        String username_20id=  request.getParameter("username102");
            java.lang.String username_20idTemp = null;
        if(!username_20id.equals("")){
         username_20idTemp  = username_20id;
        }
        String id_21id=  request.getParameter("id104");
            java.lang.String id_21idTemp = null;
        if(!id_21id.equals("")){
         id_21idTemp  = id_21id;
        }
        %>
        <jsp:useBean id="webservice_layer1User_17id" scope="session" class="webservice_layer.User" />
        <%
        webservice_layer1User_17id.setSecurityStamp(securityStamp_18idTemp);
        webservice_layer1User_17id.setPassword(password_19idTemp);
        webservice_layer1User_17id.setUsername(username_20idTemp);
        webservice_layer1User_17id.setId(id_21idTemp);
        java.lang.String updateUser93mtemp = sampleUserWebserviceProxyid.updateUser(webservice_layer1User_17id);
if(updateUser93mtemp == null){
%>
<%=updateUser93mtemp %>
<%
}else{
        String tempResultreturnp94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUser93mtemp));
        %>
        <%= tempResultreturnp94 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>