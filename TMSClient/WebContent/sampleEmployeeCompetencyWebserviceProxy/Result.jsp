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
        String competencyId_6id=  request.getParameter("competencyId31");
        int competencyId_6idTemp  = Integer.parseInt(competencyId_6id);
        String employeeId_7id=  request.getParameter("employeeId33");
        int employeeId_7idTemp  = Integer.parseInt(employeeId_7id);
        String id_8id=  request.getParameter("id35");
        int id_8idTemp  = Integer.parseInt(id_8id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_5id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_5id.setCompetencyId(competencyId_6idTemp);
        webservice_layer1EmployeeCompetency_5id.setEmployeeId(employeeId_7idTemp);
        webservice_layer1EmployeeCompetency_5id.setId(id_8idTemp);
        java.lang.String deleteEmployeeCompetency26mtemp = sampleEmployeeCompetencyWebserviceProxyid.deleteEmployeeCompetency(webservice_layer1EmployeeCompetency_5id);
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
        webservice_layer.EmployeeCompetency[] getAllEmployeeCompetencies37mtemp = sampleEmployeeCompetencyWebserviceProxyid.getAllEmployeeCompetencies();
if(getAllEmployeeCompetencies37mtemp == null){
%>
<%=getAllEmployeeCompetencies37mtemp %>
<%
}else{
        String tempreturnp38 = null;
        if(getAllEmployeeCompetencies37mtemp != null){
        java.util.List listreturnp38= java.util.Arrays.asList(getAllEmployeeCompetencies37mtemp);
        tempreturnp38 = listreturnp38.toString();
        }
        %>
        <%=tempreturnp38%>
        <%
}
break;
case 40:
        gotMethod = true;
        String competencyId_10id=  request.getParameter("competencyId45");
        int competencyId_10idTemp  = Integer.parseInt(competencyId_10id);
        String employeeId_11id=  request.getParameter("employeeId47");
        int employeeId_11idTemp  = Integer.parseInt(employeeId_11id);
        String id_12id=  request.getParameter("id49");
        int id_12idTemp  = Integer.parseInt(id_12id);
        %>
        <jsp:useBean id="webservice_layer1EmployeeCompetency_9id" scope="session" class="webservice_layer.EmployeeCompetency" />
        <%
        webservice_layer1EmployeeCompetency_9id.setCompetencyId(competencyId_10idTemp);
        webservice_layer1EmployeeCompetency_9id.setEmployeeId(employeeId_11idTemp);
        webservice_layer1EmployeeCompetency_9id.setId(id_12idTemp);
        java.lang.String updateEmployeeCompetency40mtemp = sampleEmployeeCompetencyWebserviceProxyid.updateEmployeeCompetency(webservice_layer1EmployeeCompetency_9id);
if(updateEmployeeCompetency40mtemp == null){
%>
<%=updateEmployeeCompetency40mtemp %>
<%
}else{
        String tempResultreturnp41 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmployeeCompetency40mtemp));
        %>
        <%= tempResultreturnp41 %>
        <%
}
break;
case 51:
        gotMethod = true;
        String id_13id=  request.getParameter("id54");
        int id_13idTemp  = Integer.parseInt(id_13id);
        webservice_layer.EmployeeCompetency[] findAllEmployeeCompetencies51mtemp = sampleEmployeeCompetencyWebserviceProxyid.findAllEmployeeCompetencies(id_13idTemp);
if(findAllEmployeeCompetencies51mtemp == null){
%>
<%=findAllEmployeeCompetencies51mtemp %>
<%
}else{
        String tempreturnp52 = null;
        if(findAllEmployeeCompetencies51mtemp != null){
        java.util.List listreturnp52= java.util.Arrays.asList(findAllEmployeeCompetencies51mtemp);
        tempreturnp52 = listreturnp52.toString();
        }
        %>
        <%=tempreturnp52%>
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