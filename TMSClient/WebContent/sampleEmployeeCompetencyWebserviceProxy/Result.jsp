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
        String competencyId_2id=  request.getParameter("competencyId20");
        int competencyId_2idTemp  = Integer.parseInt(competencyId_2id);
        String employeeId_3id=  request.getParameter("employeeId22");
        int employeeId_3idTemp  = Integer.parseInt(employeeId_3id);
        String id_4id=  request.getParameter("id24");
        int id_4idTemp  = Integer.parseInt(id_4id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_1id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_1id.setCompetencyId(competencyId_2idTemp);
        webservice_layer1EmployeeCompetency_1id.setEmployeeId(employeeId_3idTemp);
        webservice_layer1EmployeeCompetency_1id.setId(id_4idTemp);
        java.lang.String createEmployeeCompetency15mtemp = sampleEmployeeCompetencyWebserviceProxyid.createEmployeeCompetency(webservice_layer1EmployeeCompetency_1id);
if(createEmployeeCompetency15mtemp == null){
%>
<%=createEmployeeCompetency15mtemp %>
<%
}else{
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createEmployeeCompetency15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
}
break;
case 26:
        gotMethod = true;
        webservice_layer.EmployeeCompetency[] getAllEmployeeCompetencies26mtemp = sampleEmployeeCompetencyWebserviceProxyid.getAllEmployeeCompetencies();
if(getAllEmployeeCompetencies26mtemp == null){
%>
<%=getAllEmployeeCompetencies26mtemp %>
<%
}else{
        String tempreturnp27 = null;
        if(getAllEmployeeCompetencies26mtemp != null){
        java.util.List listreturnp27= java.util.Arrays.asList(getAllEmployeeCompetencies26mtemp);
        tempreturnp27 = listreturnp27.toString();
        }
        %>
        <%=tempreturnp27%>
        <%
}
break;
case 29:
        gotMethod = true;
        String id_5id=  request.getParameter("id32");
        int id_5idTemp  = Integer.parseInt(id_5id);
        webservice_layer.EmployeeCompetency[] findAllEmployeeCompetencies29mtemp = sampleEmployeeCompetencyWebserviceProxyid.findAllEmployeeCompetencies(id_5idTemp);
if(findAllEmployeeCompetencies29mtemp == null){
%>
<%=findAllEmployeeCompetencies29mtemp %>
<%
}else{
        String tempreturnp30 = null;
        if(findAllEmployeeCompetencies29mtemp != null){
        java.util.List listreturnp30= java.util.Arrays.asList(findAllEmployeeCompetencies29mtemp);
        tempreturnp30 = listreturnp30.toString();
        }
        %>
        <%=tempreturnp30%>
        <%
}
break;
case 34:
        gotMethod = true;
        String competencyId_7id=  request.getParameter("competencyId39");
        int competencyId_7idTemp  = Integer.parseInt(competencyId_7id);
        String employeeId_8id=  request.getParameter("employeeId41");
        int employeeId_8idTemp  = Integer.parseInt(employeeId_8id);
        String id_9id=  request.getParameter("id43");
        int id_9idTemp  = Integer.parseInt(id_9id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_6id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_6id.setCompetencyId(competencyId_7idTemp);
        webservice_layer1EmployeeCompetency_6id.setEmployeeId(employeeId_8idTemp);
        webservice_layer1EmployeeCompetency_6id.setId(id_9idTemp);
        java.lang.String updateEmployeeCompetency34mtemp = sampleEmployeeCompetencyWebserviceProxyid.updateEmployeeCompetency(webservice_layer1EmployeeCompetency_6id);
if(updateEmployeeCompetency34mtemp == null){
%>
<%=updateEmployeeCompetency34mtemp %>
<%
}else{
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmployeeCompetency34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
}
break;
case 45:
        gotMethod = true;
        String competencyId_11id=  request.getParameter("competencyId50");
        int competencyId_11idTemp  = Integer.parseInt(competencyId_11id);
        String employeeId_12id=  request.getParameter("employeeId52");
        int employeeId_12idTemp  = Integer.parseInt(employeeId_12id);
        String id_13id=  request.getParameter("id54");
        int id_13idTemp  = Integer.parseInt(id_13id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_10id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_10id.setCompetencyId(competencyId_11idTemp);
        webservice_layer1EmployeeCompetency_10id.setEmployeeId(employeeId_12idTemp);
        webservice_layer1EmployeeCompetency_10id.setId(id_13idTemp);
        java.lang.String deleteEmployeeCompetency45mtemp = sampleEmployeeCompetencyWebserviceProxyid.deleteEmployeeCompetency(webservice_layer1EmployeeCompetency_10id);
if(deleteEmployeeCompetency45mtemp == null){
%>
<%=deleteEmployeeCompetency45mtemp %>
<%
}else{
        String tempResultreturnp46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEmployeeCompetency45mtemp));
        %>
        <%= tempResultreturnp46 %>
        <%
}
break;
case 56:
        gotMethod = true;
        String id_14id=  request.getParameter("id65");
        int id_14idTemp  = Integer.parseInt(id_14id);
        webservice_layer.EmployeeCompetency findEmployeeCompetency56mtemp = sampleEmployeeCompetencyWebserviceProxyid.findEmployeeCompetency(id_14idTemp);
if(findEmployeeCompetency56mtemp == null){
%>
<%=findEmployeeCompetency56mtemp %>
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
if(findEmployeeCompetency56mtemp != null){
%>
<%=findEmployeeCompetency56mtemp.getCompetencyId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employeeId:</TD>
<TD>
<%
if(findEmployeeCompetency56mtemp != null){
%>
<%=findEmployeeCompetency56mtemp.getEmployeeId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findEmployeeCompetency56mtemp != null){
%>
<%=findEmployeeCompetency56mtemp.getId()
%><%}%>
</TD>
</TABLE>
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