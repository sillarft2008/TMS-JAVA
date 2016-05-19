<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleEmployeeCompetencyWebserviceProxyid" scope="session" class="webservice_layer.EmployeeCompetencyWebserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleEmployeeCompetencyWebserviceProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleEmployeeCompetencyWebserviceProxyid.getEndpoint();
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
        sampleEmployeeCompetencyWebserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservice_layer.EmployeeCompetencyWebservice getEmployeeCompetencyWebservice10mtemp = sampleEmployeeCompetencyWebserviceProxyid.getEmployeeCompetencyWebservice();
if(getEmployeeCompetencyWebservice10mtemp == null){
%>
<%=getEmployeeCompetencyWebservice10mtemp %>
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
        String id_1id=  request.getParameter("id24");
        int id_1idTemp  = Integer.parseInt(id_1id);
        webservice_layer.EmployeeCompetency findEmployeeCompetency15mtemp = sampleEmployeeCompetencyWebserviceProxyid.findEmployeeCompetency(id_1idTemp);
if(findEmployeeCompetency15mtemp == null){
%>
<%=findEmployeeCompetency15mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">competencyId:</TD>
<TD>
<%
if(findEmployeeCompetency15mtemp != null){
%>
<%=findEmployeeCompetency15mtemp.getCompetencyId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employeeId:</TD>
<TD>
<%
if(findEmployeeCompetency15mtemp != null){
%>
<%=findEmployeeCompetency15mtemp.getEmployeeId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findEmployeeCompetency15mtemp != null){
%>
<%=findEmployeeCompetency15mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 26:
        gotMethod = true;
        String competencyId_3id=  request.getParameter("competencyId31");
        int competencyId_3idTemp  = Integer.parseInt(competencyId_3id);
        String employeeId_4id=  request.getParameter("employeeId33");
        int employeeId_4idTemp  = Integer.parseInt(employeeId_4id);
        String id_5id=  request.getParameter("id35");
        int id_5idTemp  = Integer.parseInt(id_5id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_2id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_2id.setCompetencyId(competencyId_3idTemp);
        webservice_layer1EmployeeCompetency_2id.setEmployeeId(employeeId_4idTemp);
        webservice_layer1EmployeeCompetency_2id.setId(id_5idTemp);
        java.lang.String deleteEmployeeCompetency26mtemp = sampleEmployeeCompetencyWebserviceProxyid.deleteEmployeeCompetency(webservice_layer1EmployeeCompetency_2id);
if(deleteEmployeeCompetency26mtemp == null){
%>
<%=deleteEmployeeCompetency26mtemp %>
<%
}else{
        String tempResultreturnp27 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEmployeeCompetency26mtemp));
        %>
        <%= tempResultreturnp27 %>
        <%
}
break;
case 37:
        gotMethod = true;
        String competencyId_7id=  request.getParameter("competencyId42");
        int competencyId_7idTemp  = Integer.parseInt(competencyId_7id);
        String employeeId_8id=  request.getParameter("employeeId44");
        int employeeId_8idTemp  = Integer.parseInt(employeeId_8id);
        String id_9id=  request.getParameter("id46");
        int id_9idTemp  = Integer.parseInt(id_9id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_6id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_6id.setCompetencyId(competencyId_7idTemp);
        webservice_layer1EmployeeCompetency_6id.setEmployeeId(employeeId_8idTemp);
        webservice_layer1EmployeeCompetency_6id.setId(id_9idTemp);
        java.lang.String updateEmployeeCompetency37mtemp = sampleEmployeeCompetencyWebserviceProxyid.updateEmployeeCompetency(webservice_layer1EmployeeCompetency_6id);
if(updateEmployeeCompetency37mtemp == null){
%>
<%=updateEmployeeCompetency37mtemp %>
<%
}else{
        String tempResultreturnp38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmployeeCompetency37mtemp));
        %>
        <%= tempResultreturnp38 %>
        <%
}
break;
case 48:
        gotMethod = true;
        webservice_layer.EmployeeCompetency[] getAllEmployeeCompetencies48mtemp = sampleEmployeeCompetencyWebserviceProxyid.getAllEmployeeCompetencies();
if(getAllEmployeeCompetencies48mtemp == null){
%>
<%=getAllEmployeeCompetencies48mtemp %>
<%
}else{
        String tempreturnp49 = null;
        if(getAllEmployeeCompetencies48mtemp != null){
        java.util.List listreturnp49= java.util.Arrays.asList(getAllEmployeeCompetencies48mtemp);
        tempreturnp49 = listreturnp49.toString();
        }
        %>
        <%=tempreturnp49%>
        <%
}
break;
case 51:
        gotMethod = true;
        String competencyId_11id=  request.getParameter("competencyId56");
        int competencyId_11idTemp  = Integer.parseInt(competencyId_11id);
        String employeeId_12id=  request.getParameter("employeeId58");
        int employeeId_12idTemp  = Integer.parseInt(employeeId_12id);
        String id_13id=  request.getParameter("id60");
        int id_13idTemp  = Integer.parseInt(id_13id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_10id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_10id.setCompetencyId(competencyId_11idTemp);
        webservice_layer1EmployeeCompetency_10id.setEmployeeId(employeeId_12idTemp);
        webservice_layer1EmployeeCompetency_10id.setId(id_13idTemp);
        java.lang.String createEmployeeCompetency51mtemp = sampleEmployeeCompetencyWebserviceProxyid.createEmployeeCompetency(webservice_layer1EmployeeCompetency_10id);
if(createEmployeeCompetency51mtemp == null){
%>
<%=createEmployeeCompetency51mtemp %>
<%
}else{
        String tempResultreturnp52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createEmployeeCompetency51mtemp));
        %>
        <%= tempResultreturnp52 %>
        <%
}
break;
case 62:
        gotMethod = true;
        String id_14id=  request.getParameter("id65");
        int id_14idTemp  = Integer.parseInt(id_14id);
        webservice_layer.EmployeeCompetency[] findAllEmployeeCompetencies62mtemp = sampleEmployeeCompetencyWebserviceProxyid.findAllEmployeeCompetencies(id_14idTemp);
if(findAllEmployeeCompetencies62mtemp == null){
%>
<%=findAllEmployeeCompetencies62mtemp %>
<%
}else{
        String tempreturnp63 = null;
        if(findAllEmployeeCompetencies62mtemp != null){
        java.util.List listreturnp63= java.util.Arrays.asList(findAllEmployeeCompetencies62mtemp);
        tempreturnp63 = listreturnp63.toString();
        }
        %>
        <%=tempreturnp63%>
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