<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleCompetencyWebserviceProxyid" scope="session" class="webservice_layer.CompetencyWebserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleCompetencyWebserviceProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleCompetencyWebserviceProxyid.getEndpoint();
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
        sampleCompetencyWebserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservice_layer.CompetencyWebservice getCompetencyWebservice10mtemp = sampleCompetencyWebserviceProxyid.getCompetencyWebservice();
if(getCompetencyWebservice10mtemp == null){
%>
<%=getCompetencyWebservice10mtemp %>
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
        String competency_2id=  request.getParameter("competency20");
            java.lang.String competency_2idTemp = null;
        if(!competency_2id.equals("")){
         competency_2idTemp  = competency_2id;
        }
        String id_3id=  request.getParameter("id22");
        int id_3idTemp  = Integer.parseInt(id_3id);
        %>
        <jsp:useBean id="webservice_layer1Competency_1id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_1id.setCompetency(competency_2idTemp);
        webservice_layer1Competency_1id.setId(id_3idTemp);
        java.lang.String deleteCompetency15mtemp = sampleCompetencyWebserviceProxyid.deleteCompetency(webservice_layer1Competency_1id);
if(deleteCompetency15mtemp == null){
%>
<%=deleteCompetency15mtemp %>
<%
}else{
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteCompetency15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
}
break;
case 24:
        gotMethod = true;
        String competency_5id=  request.getParameter("competency29");
            java.lang.String competency_5idTemp = null;
        if(!competency_5id.equals("")){
         competency_5idTemp  = competency_5id;
        }
        String id_6id=  request.getParameter("id31");
        int id_6idTemp  = Integer.parseInt(id_6id);
        %>
        <jsp:useBean id="webservice_layer1Competency_4id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_4id.setCompetency(competency_5idTemp);
        webservice_layer1Competency_4id.setId(id_6idTemp);
        java.lang.String updateCompetency24mtemp = sampleCompetencyWebserviceProxyid.updateCompetency(webservice_layer1Competency_4id);
if(updateCompetency24mtemp == null){
%>
<%=updateCompetency24mtemp %>
<%
}else{
        String tempResultreturnp25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateCompetency24mtemp));
        %>
        <%= tempResultreturnp25 %>
        <%
}
break;
case 33:
        gotMethod = true;
        String competency_8id=  request.getParameter("competency38");
            java.lang.String competency_8idTemp = null;
        if(!competency_8id.equals("")){
         competency_8idTemp  = competency_8id;
        }
        String id_9id=  request.getParameter("id40");
        int id_9idTemp  = Integer.parseInt(id_9id);
        %>
        <jsp:useBean id="webservice_layer1Competency_7id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_7id.setCompetency(competency_8idTemp);
        webservice_layer1Competency_7id.setId(id_9idTemp);
        java.lang.String createCompetency33mtemp = sampleCompetencyWebserviceProxyid.createCompetency(webservice_layer1Competency_7id);
if(createCompetency33mtemp == null){
%>
<%=createCompetency33mtemp %>
<%
}else{
        String tempResultreturnp34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createCompetency33mtemp));
        %>
        <%= tempResultreturnp34 %>
        <%
}
break;
case 42:
        gotMethod = true;
        String id_10id=  request.getParameter("id49");
        int id_10idTemp  = Integer.parseInt(id_10id);
        webservice_layer.Competency findCompetency42mtemp = sampleCompetencyWebserviceProxyid.findCompetency(id_10idTemp);
if(findCompetency42mtemp == null){
%>
<%=findCompetency42mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">competency:</TD>
<TD>
<%
if(findCompetency42mtemp != null){
java.lang.String typecompetency45 = findCompetency42mtemp.getCompetency();
        String tempResultcompetency45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompetency45));
        %>
        <%= tempResultcompetency45 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findCompetency42mtemp != null){
%>
<%=findCompetency42mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 51:
        gotMethod = true;
        webservice_layer.Competency[] getAllCompetencies51mtemp = sampleCompetencyWebserviceProxyid.getAllCompetencies();
if(getAllCompetencies51mtemp == null){
%>
<%=getAllCompetencies51mtemp %>
<%
}else{
        String tempreturnp52 = null;
        if(getAllCompetencies51mtemp != null){
        java.util.List listreturnp52= java.util.Arrays.asList(getAllCompetencies51mtemp);
        tempreturnp52 = listreturnp52.toString();
        }
        %>
        <%=tempreturnp52%>
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