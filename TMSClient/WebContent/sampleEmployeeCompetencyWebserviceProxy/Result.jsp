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
        String id_1id=  request.getParameter("id18");
        int id_1idTemp  = Integer.parseInt(id_1id);
        webservice_layer.EmployeeCompetency[] findAllEmployeeCompetencies15mtemp = sampleEmployeeCompetencyWebserviceProxyid.findAllEmployeeCompetencies(id_1idTemp);
if(findAllEmployeeCompetencies15mtemp == null){
%>
<%=findAllEmployeeCompetencies15mtemp %>
<%
}else{
        String tempreturnp16 = null;
        if(findAllEmployeeCompetencies15mtemp != null){
        java.util.List listreturnp16= java.util.Arrays.asList(findAllEmployeeCompetencies15mtemp);
        tempreturnp16 = listreturnp16.toString();
        }
        %>
        <%=tempreturnp16%>
        <%
}
break;
case 20:
        gotMethod = true;
        String competencyId_3id=  request.getParameter("competencyId25");
        int competencyId_3idTemp  = Integer.parseInt(competencyId_3id);
        String employeeId_4id=  request.getParameter("employeeId27");
        int employeeId_4idTemp  = Integer.parseInt(employeeId_4id);
        String id_5id=  request.getParameter("id29");
        int id_5idTemp  = Integer.parseInt(id_5id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_2id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_2id.setCompetencyId(competencyId_3idTemp);
        webservice_layer1EmployeeCompetency_2id.setEmployeeId(employeeId_4idTemp);
        webservice_layer1EmployeeCompetency_2id.setId(id_5idTemp);
        java.lang.String deleteEmployeeCompetency20mtemp = sampleEmployeeCompetencyWebserviceProxyid.deleteEmployeeCompetency(webservice_layer1EmployeeCompetency_2id);
if(deleteEmployeeCompetency20mtemp == null){
%>
<%=deleteEmployeeCompetency20mtemp %>
<%
}else{
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEmployeeCompetency20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
}
break;
case 31:
        gotMethod = true;
        String competencyId_7id=  request.getParameter("competencyId36");
        int competencyId_7idTemp  = Integer.parseInt(competencyId_7id);
        String employeeId_8id=  request.getParameter("employeeId38");
        int employeeId_8idTemp  = Integer.parseInt(employeeId_8id);
        String id_9id=  request.getParameter("id40");
        int id_9idTemp  = Integer.parseInt(id_9id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_6id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_6id.setCompetencyId(competencyId_7idTemp);
        webservice_layer1EmployeeCompetency_6id.setEmployeeId(employeeId_8idTemp);
        webservice_layer1EmployeeCompetency_6id.setId(id_9idTemp);
        java.lang.String updateEmployeeCompetency31mtemp = sampleEmployeeCompetencyWebserviceProxyid.updateEmployeeCompetency(webservice_layer1EmployeeCompetency_6id);
if(updateEmployeeCompetency31mtemp == null){
%>
<%=updateEmployeeCompetency31mtemp %>
<%
}else{
        String tempResultreturnp32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmployeeCompetency31mtemp));
        %>
        <%= tempResultreturnp32 %>
        <%
}
break;
case 42:
        gotMethod = true;
        String competencyId_11id=  request.getParameter("competencyId47");
        int competencyId_11idTemp  = Integer.parseInt(competencyId_11id);
        String employeeId_12id=  request.getParameter("employeeId49");
        int employeeId_12idTemp  = Integer.parseInt(employeeId_12id);
        String id_13id=  request.getParameter("id51");
        int id_13idTemp  = Integer.parseInt(id_13id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_10id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_10id.setCompetencyId(competencyId_11idTemp);
        webservice_layer1EmployeeCompetency_10id.setEmployeeId(employeeId_12idTemp);
        webservice_layer1EmployeeCompetency_10id.setId(id_13idTemp);
        java.lang.String createEmployeeCompetency42mtemp = sampleEmployeeCompetencyWebserviceProxyid.createEmployeeCompetency(webservice_layer1EmployeeCompetency_10id);
if(createEmployeeCompetency42mtemp == null){
%>
<%=createEmployeeCompetency42mtemp %>
<%
}else{
        String tempResultreturnp43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createEmployeeCompetency42mtemp));
        %>
        <%= tempResultreturnp43 %>
        <%
}
break;
case 53:
        gotMethod = true;
        String id_14id=  request.getParameter("id62");
        int id_14idTemp  = Integer.parseInt(id_14id);
        webservice_layer.EmployeeCompetency findEmployeeCompetency53mtemp = sampleEmployeeCompetencyWebserviceProxyid.findEmployeeCompetency(id_14idTemp);
if(findEmployeeCompetency53mtemp == null){
%>
<%=findEmployeeCompetency53mtemp %>
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
if(findEmployeeCompetency53mtemp != null){
%>
<%=findEmployeeCompetency53mtemp.getCompetencyId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employeeId:</TD>
<TD>
<%
if(findEmployeeCompetency53mtemp != null){
%>
<%=findEmployeeCompetency53mtemp.getEmployeeId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findEmployeeCompetency53mtemp != null){
%>
<%=findEmployeeCompetency53mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 64:
        gotMethod = true;
        webservice_layer.EmployeeCompetency[] getAllEmployeeCompetencies64mtemp = sampleEmployeeCompetencyWebserviceProxyid.getAllEmployeeCompetencies();
if(getAllEmployeeCompetencies64mtemp == null){
%>
<%=getAllEmployeeCompetencies64mtemp %>
<%
}else{
        String tempreturnp65 = null;
        if(getAllEmployeeCompetencies64mtemp != null){
        java.util.List listreturnp65= java.util.Arrays.asList(getAllEmployeeCompetencies64mtemp);
        tempreturnp65 = listreturnp65.toString();
        }
        %>
        <%=tempreturnp65%>
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