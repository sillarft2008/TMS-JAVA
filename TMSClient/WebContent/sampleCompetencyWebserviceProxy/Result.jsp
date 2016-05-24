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
        String id_4id=  request.getParameter("id31");
        int id_4idTemp  = Integer.parseInt(id_4id);
        webservice_layer.Competency findCompetency24mtemp = sampleCompetencyWebserviceProxyid.findCompetency(id_4idTemp);
if(findCompetency24mtemp == null){
%>
<%=findCompetency24mtemp %>
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
if(findCompetency24mtemp != null){
java.lang.String typecompetency27 = findCompetency24mtemp.getCompetency();
        String tempResultcompetency27 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompetency27));
        %>
        <%= tempResultcompetency27 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findCompetency24mtemp != null){
%>
<%=findCompetency24mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 33:
        gotMethod = true;
        String competency_6id=  request.getParameter("competency38");
            java.lang.String competency_6idTemp = null;
        if(!competency_6id.equals("")){
         competency_6idTemp  = competency_6id;
        }
        String id_7id=  request.getParameter("id40");
        int id_7idTemp  = Integer.parseInt(id_7id);
        %>
        <jsp:useBean id="webservice_layer1Competency_5id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_5id.setCompetency(competency_6idTemp);
        webservice_layer1Competency_5id.setId(id_7idTemp);
        java.lang.String createCompetency33mtemp = sampleCompetencyWebserviceProxyid.createCompetency(webservice_layer1Competency_5id);
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
        String competency_9id=  request.getParameter("competency47");
            java.lang.String competency_9idTemp = null;
        if(!competency_9id.equals("")){
         competency_9idTemp  = competency_9id;
        }
        String id_10id=  request.getParameter("id49");
        int id_10idTemp  = Integer.parseInt(id_10id);
        %>
        <jsp:useBean id="webservice_layer1Competency_8id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_8id.setCompetency(competency_9idTemp);
        webservice_layer1Competency_8id.setId(id_10idTemp);
        java.lang.String updateCompetency42mtemp = sampleCompetencyWebserviceProxyid.updateCompetency(webservice_layer1Competency_8id);
if(updateCompetency42mtemp == null){
%>
<%=updateCompetency42mtemp %>
<%
}else{
        String tempResultreturnp43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateCompetency42mtemp));
        %>
        <%= tempResultreturnp43 %>
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