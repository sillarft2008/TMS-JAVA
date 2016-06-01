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
        webservice_layer.EmployeeCompetency[] getAllEmployeeCompetencies15mtemp = sampleEmployeeCompetencyWebserviceProxyid.getAllEmployeeCompetencies();
if(getAllEmployeeCompetencies15mtemp == null){
%>
<%=getAllEmployeeCompetencies15mtemp %>
<%
}else{
        String tempreturnp16 = null;
        if(getAllEmployeeCompetencies15mtemp != null){
        java.util.List listreturnp16= java.util.Arrays.asList(getAllEmployeeCompetencies15mtemp);
        tempreturnp16 = listreturnp16.toString();
        }
        %>
        <%=tempreturnp16%>
        <%
}
break;
case 18:
        gotMethod = true;
        String id_1id=  request.getParameter("id21");
        int id_1idTemp  = Integer.parseInt(id_1id);
        webservice_layer.EmployeeCompetency[] findAllEmployeeCompetencies18mtemp = sampleEmployeeCompetencyWebserviceProxyid.findAllEmployeeCompetencies(id_1idTemp);
if(findAllEmployeeCompetencies18mtemp == null){
%>
<%=findAllEmployeeCompetencies18mtemp %>
<%
}else{
        String tempreturnp19 = null;
        if(findAllEmployeeCompetencies18mtemp != null){
        java.util.List listreturnp19= java.util.Arrays.asList(findAllEmployeeCompetencies18mtemp);
        tempreturnp19 = listreturnp19.toString();
        }
        %>
        <%=tempreturnp19%>
        <%
}
break;
case 23:
        gotMethod = true;
        String competencyId_3id=  request.getParameter("competencyId28");
        int competencyId_3idTemp  = Integer.parseInt(competencyId_3id);
        String employeeId_4id=  request.getParameter("employeeId30");
        int employeeId_4idTemp  = Integer.parseInt(employeeId_4id);
        String id_5id=  request.getParameter("id32");
        int id_5idTemp  = Integer.parseInt(id_5id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_2id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_2id.setCompetencyId(competencyId_3idTemp);
        webservice_layer1EmployeeCompetency_2id.setEmployeeId(employeeId_4idTemp);
        webservice_layer1EmployeeCompetency_2id.setId(id_5idTemp);
        java.lang.String deleteEmployeeCompetency23mtemp = sampleEmployeeCompetencyWebserviceProxyid.deleteEmployeeCompetency(webservice_layer1EmployeeCompetency_2id);
if(deleteEmployeeCompetency23mtemp == null){
%>
<%=deleteEmployeeCompetency23mtemp %>
<%
}else{
        String tempResultreturnp24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEmployeeCompetency23mtemp));
        %>
        <%= tempResultreturnp24 %>
        <%
}
break;
case 34:
        gotMethod = true;
        String id_6id=  request.getParameter("id43");
        int id_6idTemp  = Integer.parseInt(id_6id);
        webservice_layer.EmployeeCompetency findEmployeeCompetency34mtemp = sampleEmployeeCompetencyWebserviceProxyid.findEmployeeCompetency(id_6idTemp);
if(findEmployeeCompetency34mtemp == null){
%>
<%=findEmployeeCompetency34mtemp %>
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
if(findEmployeeCompetency34mtemp != null){
%>
<%=findEmployeeCompetency34mtemp.getCompetencyId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employeeId:</TD>
<TD>
<%
if(findEmployeeCompetency34mtemp != null){
%>
<%=findEmployeeCompetency34mtemp.getEmployeeId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findEmployeeCompetency34mtemp != null){
%>
<%=findEmployeeCompetency34mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 45:
        gotMethod = true;
        String competencyId_8id=  request.getParameter("competencyId50");
        int competencyId_8idTemp  = Integer.parseInt(competencyId_8id);
        String employeeId_9id=  request.getParameter("employeeId52");
        int employeeId_9idTemp  = Integer.parseInt(employeeId_9id);
        String id_10id=  request.getParameter("id54");
        int id_10idTemp  = Integer.parseInt(id_10id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_7id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_7id.setCompetencyId(competencyId_8idTemp);
        webservice_layer1EmployeeCompetency_7id.setEmployeeId(employeeId_9idTemp);
        webservice_layer1EmployeeCompetency_7id.setId(id_10idTemp);
        java.lang.String updateEmployeeCompetency45mtemp = sampleEmployeeCompetencyWebserviceProxyid.updateEmployeeCompetency(webservice_layer1EmployeeCompetency_7id);
if(updateEmployeeCompetency45mtemp == null){
%>
<%=updateEmployeeCompetency45mtemp %>
<%
}else{
        String tempResultreturnp46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmployeeCompetency45mtemp));
        %>
        <%= tempResultreturnp46 %>
        <%
}
break;
case 56:
        gotMethod = true;
        String competencyId_12id=  request.getParameter("competencyId61");
        int competencyId_12idTemp  = Integer.parseInt(competencyId_12id);
        String employeeId_13id=  request.getParameter("employeeId63");
        int employeeId_13idTemp  = Integer.parseInt(employeeId_13id);
        String id_14id=  request.getParameter("id65");
        int id_14idTemp  = Integer.parseInt(id_14id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_11id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_11id.setCompetencyId(competencyId_12idTemp);
        webservice_layer1EmployeeCompetency_11id.setEmployeeId(employeeId_13idTemp);
        webservice_layer1EmployeeCompetency_11id.setId(id_14idTemp);
        java.lang.String createEmployeeCompetency56mtemp = sampleEmployeeCompetencyWebserviceProxyid.createEmployeeCompetency(webservice_layer1EmployeeCompetency_11id);
if(createEmployeeCompetency56mtemp == null){
%>
<%=createEmployeeCompetency56mtemp %>
<%
}else{
        String tempResultreturnp57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createEmployeeCompetency56mtemp));
        %>
        <%= tempResultreturnp57 %>
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