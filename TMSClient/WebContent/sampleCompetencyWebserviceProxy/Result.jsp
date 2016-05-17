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
        webservice_layer.Competency[] getAllCompetencies15mtemp = sampleCompetencyWebserviceProxyid.getAllCompetencies();
if(getAllCompetencies15mtemp == null){
%>
<%=getAllCompetencies15mtemp %>
<%
}else{
        String tempreturnp16 = null;
        if(getAllCompetencies15mtemp != null){
        java.util.List listreturnp16= java.util.Arrays.asList(getAllCompetencies15mtemp);
        tempreturnp16 = listreturnp16.toString();
        }
        %>
        <%=tempreturnp16%>
        <%
}
break;
case 18:
        gotMethod = true;
        String id_1id=  request.getParameter("id25");
        int id_1idTemp  = Integer.parseInt(id_1id);
        webservice_layer.Competency findCompetency18mtemp = sampleCompetencyWebserviceProxyid.findCompetency(id_1idTemp);
if(findCompetency18mtemp == null){
%>
<%=findCompetency18mtemp %>
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
if(findCompetency18mtemp != null){
java.lang.String typecompetency21 = findCompetency18mtemp.getCompetency();
        String tempResultcompetency21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompetency21));
        %>
        <%= tempResultcompetency21 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findCompetency18mtemp != null){
%>
<%=findCompetency18mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 27:
        gotMethod = true;
        String competency_3id=  request.getParameter("competency32");
            java.lang.String competency_3idTemp = null;
        if(!competency_3id.equals("")){
         competency_3idTemp  = competency_3id;
        }
        String id_4id=  request.getParameter("id34");
        int id_4idTemp  = Integer.parseInt(id_4id);
        %>
        <jsp:useBean id="webservice_layer1Competency_2id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_2id.setCompetency(competency_3idTemp);
        webservice_layer1Competency_2id.setId(id_4idTemp);
        java.lang.String updateCompetency27mtemp = sampleCompetencyWebserviceProxyid.updateCompetency(webservice_layer1Competency_2id);
if(updateCompetency27mtemp == null){
%>
<%=updateCompetency27mtemp %>
<%
}else{
        String tempResultreturnp28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateCompetency27mtemp));
        %>
        <%= tempResultreturnp28 %>
        <%
}
break;
case 36:
        gotMethod = true;
        String competency_6id=  request.getParameter("competency41");
            java.lang.String competency_6idTemp = null;
        if(!competency_6id.equals("")){
         competency_6idTemp  = competency_6id;
        }
        String id_7id=  request.getParameter("id43");
        int id_7idTemp  = Integer.parseInt(id_7id);
        %>
        <jsp:useBean id="webservice_layer1Competency_5id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_5id.setCompetency(competency_6idTemp);
        webservice_layer1Competency_5id.setId(id_7idTemp);
        java.lang.String createCompetency36mtemp = sampleCompetencyWebserviceProxyid.createCompetency(webservice_layer1Competency_5id);
if(createCompetency36mtemp == null){
%>
<%=createCompetency36mtemp %>
<%
}else{
        String tempResultreturnp37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createCompetency36mtemp));
        %>
        <%= tempResultreturnp37 %>
        <%
}
break;
case 45:
        gotMethod = true;
        String competency_9id=  request.getParameter("competency50");
            java.lang.String competency_9idTemp = null;
        if(!competency_9id.equals("")){
         competency_9idTemp  = competency_9id;
        }
        String id_10id=  request.getParameter("id52");
        int id_10idTemp  = Integer.parseInt(id_10id);
        %>
        <jsp:useBean id="webservice_layer1Competency_8id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_8id.setCompetency(competency_9idTemp);
        webservice_layer1Competency_8id.setId(id_10idTemp);
        java.lang.String deleteCompetency45mtemp = sampleCompetencyWebserviceProxyid.deleteCompetency(webservice_layer1Competency_8id);
if(deleteCompetency45mtemp == null){
%>
<%=deleteCompetency45mtemp %>
<%
}else{
        String tempResultreturnp46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteCompetency45mtemp));
        %>
        <%= tempResultreturnp46 %>
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