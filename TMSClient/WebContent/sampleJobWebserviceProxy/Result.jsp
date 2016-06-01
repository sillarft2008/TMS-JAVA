<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleJobWebserviceProxyid" scope="session" class="webservice_layer.JobWebserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleJobWebserviceProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleJobWebserviceProxyid.getEndpoint();
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
        sampleJobWebserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservice_layer.JobWebservice getJobWebservice10mtemp = sampleJobWebserviceProxyid.getJobWebservice();
if(getJobWebservice10mtemp == null){
%>
<%=getJobWebservice10mtemp %>
<%
}else{
        if(getJobWebservice10mtemp!= null){
        String tempreturnp11 = getJobWebservice10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String startDate_2id=  request.getParameter("startDate18");
            java.util.Calendar startDate_2idTemp = null;
        if(!startDate_2id.equals("")){
        java.text.DateFormat dateFormatstartDate18 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate18  = dateFormatstartDate18.parse(startDate_2id);
         startDate_2idTemp = new java.util.GregorianCalendar();
        startDate_2idTemp.setTime(dateTempstartDate18);
        }
        String address_3id=  request.getParameter("address20");
            java.lang.String address_3idTemp = null;
        if(!address_3id.equals("")){
         address_3idTemp  = address_3id;
        }
        String endDate_4id=  request.getParameter("endDate22");
            java.util.Calendar endDate_4idTemp = null;
        if(!endDate_4id.equals("")){
        java.text.DateFormat dateFormatendDate22 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate22  = dateFormatendDate22.parse(endDate_4id);
         endDate_4idTemp = new java.util.GregorianCalendar();
        endDate_4idTemp.setTime(dateTempendDate22);
        }
        String telefone_6id=  request.getParameter("telefone26");
            java.lang.String telefone_6idTemp = null;
        if(!telefone_6id.equals("")){
         telefone_6idTemp  = telefone_6id;
        }
        String cvr_7id=  request.getParameter("cvr28");
        int cvr_7idTemp  = Integer.parseInt(cvr_7id);
        String address_8id=  request.getParameter("address30");
            java.lang.String address_8idTemp = null;
        if(!address_8id.equals("")){
         address_8idTemp  = address_8id;
        }
        String lastName_9id=  request.getParameter("lastName32");
            java.lang.String lastName_9idTemp = null;
        if(!lastName_9id.equals("")){
         lastName_9idTemp  = lastName_9id;
        }
        String firstName_10id=  request.getParameter("firstName34");
            java.lang.String firstName_10idTemp = null;
        if(!firstName_10id.equals("")){
         firstName_10idTemp  = firstName_10id;
        }
        String companyName_11id=  request.getParameter("companyName36");
            java.lang.String companyName_11idTemp = null;
        if(!companyName_11id.equals("")){
         companyName_11idTemp  = companyName_11id;
        }
        String id_12id=  request.getParameter("id38");
        int id_12idTemp  = Integer.parseInt(id_12id);
        %>
        <jsp:useBean id="webservice_layer1Customer_5id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_5id.setTelefone(telefone_6idTemp);
        webservice_layer1Customer_5id.setCvr(cvr_7idTemp);
        webservice_layer1Customer_5id.setAddress(address_8idTemp);
        webservice_layer1Customer_5id.setLastName(lastName_9idTemp);
        webservice_layer1Customer_5id.setFirstName(firstName_10idTemp);
        webservice_layer1Customer_5id.setCompanyName(companyName_11idTemp);
        webservice_layer1Customer_5id.setId(id_12idTemp);
        String id_13id=  request.getParameter("id40");
        int id_13idTemp  = Integer.parseInt(id_13id);
        %>
        <jsp:useBean id="webservice_layer1Job_1id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_1id.setStartDate(startDate_2idTemp);
        webservice_layer1Job_1id.setAddress(address_3idTemp);
        webservice_layer1Job_1id.setEndDate(endDate_4idTemp);
        webservice_layer1Job_1id.setCustomer(webservice_layer1Customer_5id);
        webservice_layer1Job_1id.setId(id_13idTemp);
        java.lang.String deleteJob13mtemp = sampleJobWebserviceProxyid.deleteJob(webservice_layer1Job_1id);
if(deleteJob13mtemp == null){
%>
<%=deleteJob13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteJob13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 42:
        gotMethod = true;
        String startDate_15id=  request.getParameter("startDate47");
            java.util.Calendar startDate_15idTemp = null;
        if(!startDate_15id.equals("")){
        java.text.DateFormat dateFormatstartDate47 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate47  = dateFormatstartDate47.parse(startDate_15id);
         startDate_15idTemp = new java.util.GregorianCalendar();
        startDate_15idTemp.setTime(dateTempstartDate47);
        }
        String address_16id=  request.getParameter("address49");
            java.lang.String address_16idTemp = null;
        if(!address_16id.equals("")){
         address_16idTemp  = address_16id;
        }
        String endDate_17id=  request.getParameter("endDate51");
            java.util.Calendar endDate_17idTemp = null;
        if(!endDate_17id.equals("")){
        java.text.DateFormat dateFormatendDate51 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate51  = dateFormatendDate51.parse(endDate_17id);
         endDate_17idTemp = new java.util.GregorianCalendar();
        endDate_17idTemp.setTime(dateTempendDate51);
        }
        String telefone_19id=  request.getParameter("telefone55");
            java.lang.String telefone_19idTemp = null;
        if(!telefone_19id.equals("")){
         telefone_19idTemp  = telefone_19id;
        }
        String cvr_20id=  request.getParameter("cvr57");
        int cvr_20idTemp  = Integer.parseInt(cvr_20id);
        String address_21id=  request.getParameter("address59");
            java.lang.String address_21idTemp = null;
        if(!address_21id.equals("")){
         address_21idTemp  = address_21id;
        }
        String lastName_22id=  request.getParameter("lastName61");
            java.lang.String lastName_22idTemp = null;
        if(!lastName_22id.equals("")){
         lastName_22idTemp  = lastName_22id;
        }
        String firstName_23id=  request.getParameter("firstName63");
            java.lang.String firstName_23idTemp = null;
        if(!firstName_23id.equals("")){
         firstName_23idTemp  = firstName_23id;
        }
        String companyName_24id=  request.getParameter("companyName65");
            java.lang.String companyName_24idTemp = null;
        if(!companyName_24id.equals("")){
         companyName_24idTemp  = companyName_24id;
        }
        String id_25id=  request.getParameter("id67");
        int id_25idTemp  = Integer.parseInt(id_25id);
        %>
        <jsp:useBean id="webservice_layer1Customer_18id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_18id.setTelefone(telefone_19idTemp);
        webservice_layer1Customer_18id.setCvr(cvr_20idTemp);
        webservice_layer1Customer_18id.setAddress(address_21idTemp);
        webservice_layer1Customer_18id.setLastName(lastName_22idTemp);
        webservice_layer1Customer_18id.setFirstName(firstName_23idTemp);
        webservice_layer1Customer_18id.setCompanyName(companyName_24idTemp);
        webservice_layer1Customer_18id.setId(id_25idTemp);
        String id_26id=  request.getParameter("id69");
        int id_26idTemp  = Integer.parseInt(id_26id);
        %>
        <jsp:useBean id="webservice_layer1Job_14id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_14id.setStartDate(startDate_15idTemp);
        webservice_layer1Job_14id.setAddress(address_16idTemp);
        webservice_layer1Job_14id.setEndDate(endDate_17idTemp);
        webservice_layer1Job_14id.setCustomer(webservice_layer1Customer_18id);
        webservice_layer1Job_14id.setId(id_26idTemp);
        java.lang.String updateJob42mtemp = sampleJobWebserviceProxyid.updateJob(webservice_layer1Job_14id);
if(updateJob42mtemp == null){
%>
<%=updateJob42mtemp %>
<%
}else{
        String tempResultreturnp43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateJob42mtemp));
        %>
        <%= tempResultreturnp43 %>
        <%
}
break;
case 71:
        gotMethod = true;
        String startDate_28id=  request.getParameter("startDate76");
            java.util.Calendar startDate_28idTemp = null;
        if(!startDate_28id.equals("")){
        java.text.DateFormat dateFormatstartDate76 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate76  = dateFormatstartDate76.parse(startDate_28id);
         startDate_28idTemp = new java.util.GregorianCalendar();
        startDate_28idTemp.setTime(dateTempstartDate76);
        }
        String address_29id=  request.getParameter("address78");
            java.lang.String address_29idTemp = null;
        if(!address_29id.equals("")){
         address_29idTemp  = address_29id;
        }
        String endDate_30id=  request.getParameter("endDate80");
            java.util.Calendar endDate_30idTemp = null;
        if(!endDate_30id.equals("")){
        java.text.DateFormat dateFormatendDate80 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate80  = dateFormatendDate80.parse(endDate_30id);
         endDate_30idTemp = new java.util.GregorianCalendar();
        endDate_30idTemp.setTime(dateTempendDate80);
        }
        String telefone_32id=  request.getParameter("telefone84");
            java.lang.String telefone_32idTemp = null;
        if(!telefone_32id.equals("")){
         telefone_32idTemp  = telefone_32id;
        }
        String cvr_33id=  request.getParameter("cvr86");
        int cvr_33idTemp  = Integer.parseInt(cvr_33id);
        String address_34id=  request.getParameter("address88");
            java.lang.String address_34idTemp = null;
        if(!address_34id.equals("")){
         address_34idTemp  = address_34id;
        }
        String lastName_35id=  request.getParameter("lastName90");
            java.lang.String lastName_35idTemp = null;
        if(!lastName_35id.equals("")){
         lastName_35idTemp  = lastName_35id;
        }
        String firstName_36id=  request.getParameter("firstName92");
            java.lang.String firstName_36idTemp = null;
        if(!firstName_36id.equals("")){
         firstName_36idTemp  = firstName_36id;
        }
        String companyName_37id=  request.getParameter("companyName94");
            java.lang.String companyName_37idTemp = null;
        if(!companyName_37id.equals("")){
         companyName_37idTemp  = companyName_37id;
        }
        String id_38id=  request.getParameter("id96");
        int id_38idTemp  = Integer.parseInt(id_38id);
        %>
        <jsp:useBean id="webservice_layer1Customer_31id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_31id.setTelefone(telefone_32idTemp);
        webservice_layer1Customer_31id.setCvr(cvr_33idTemp);
        webservice_layer1Customer_31id.setAddress(address_34idTemp);
        webservice_layer1Customer_31id.setLastName(lastName_35idTemp);
        webservice_layer1Customer_31id.setFirstName(firstName_36idTemp);
        webservice_layer1Customer_31id.setCompanyName(companyName_37idTemp);
        webservice_layer1Customer_31id.setId(id_38idTemp);
        String id_39id=  request.getParameter("id98");
        int id_39idTemp  = Integer.parseInt(id_39id);
        %>
        <jsp:useBean id="webservice_layer1Job_27id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_27id.setStartDate(startDate_28idTemp);
        webservice_layer1Job_27id.setAddress(address_29idTemp);
        webservice_layer1Job_27id.setEndDate(endDate_30idTemp);
        webservice_layer1Job_27id.setCustomer(webservice_layer1Customer_31id);
        webservice_layer1Job_27id.setId(id_39idTemp);
        sampleJobWebserviceProxyid.createJob(webservice_layer1Job_27id);
break;
case 100:
        gotMethod = true;
        webservice_layer.Job[] findJobArray100mtemp = sampleJobWebserviceProxyid.findJobArray();
if(findJobArray100mtemp == null){
%>
<%=findJobArray100mtemp %>
<%
}else{
        String tempreturnp101 = null;
        if(findJobArray100mtemp != null){
        java.util.List listreturnp101= java.util.Arrays.asList(findJobArray100mtemp);
        tempreturnp101 = listreturnp101.toString();
        }
        %>
        <%=tempreturnp101%>
        <%
}
break;
case 103:
        gotMethod = true;
        String jobId_40id=  request.getParameter("jobId130");
        int jobId_40idTemp  = Integer.parseInt(jobId_40id);
        webservice_layer.Job findJob103mtemp = sampleJobWebserviceProxyid.findJob(jobId_40idTemp);
if(findJob103mtemp == null){
%>
<%=findJob103mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(findJob103mtemp != null){
java.util.Calendar typestartDate106 = findJob103mtemp.getStartDate();
        java.text.DateFormat dateFormatstartDate106 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate106 = typestartDate106.getTime();
        String tempResultstartDate106 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate106.format(datestartDate106));
        %>
        <%= tempResultstartDate106 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findJob103mtemp != null){
java.lang.String typeaddress108 = findJob103mtemp.getAddress();
        String tempResultaddress108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress108));
        %>
        <%= tempResultaddress108 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findJob103mtemp != null){
java.util.Calendar typeendDate110 = findJob103mtemp.getEndDate();
        java.text.DateFormat dateFormatendDate110 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate110 = typeendDate110.getTime();
        String tempResultendDate110 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate110.format(dateendDate110));
        %>
        <%= tempResultendDate110 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD>
<%
if(findJob103mtemp != null){
webservice_layer.Customer tebece0=findJob103mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typetelefone114 = tebece0.getTelefone();
        String tempResulttelefone114 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone114));
        %>
        <%= tempResulttelefone114 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findJob103mtemp != null){
webservice_layer.Customer tebece0=findJob103mtemp.getCustomer();
if(tebece0 != null){
%>
<%=tebece0.getCvr()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findJob103mtemp != null){
webservice_layer.Customer tebece0=findJob103mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typeaddress118 = tebece0.getAddress();
        String tempResultaddress118 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress118));
        %>
        <%= tempResultaddress118 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findJob103mtemp != null){
webservice_layer.Customer tebece0=findJob103mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typelastName120 = tebece0.getLastName();
        String tempResultlastName120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName120));
        %>
        <%= tempResultlastName120 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findJob103mtemp != null){
webservice_layer.Customer tebece0=findJob103mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typefirstName122 = tebece0.getFirstName();
        String tempResultfirstName122 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName122));
        %>
        <%= tempResultfirstName122 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findJob103mtemp != null){
webservice_layer.Customer tebece0=findJob103mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typecompanyName124 = tebece0.getCompanyName();
        String tempResultcompanyName124 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName124));
        %>
        <%= tempResultcompanyName124 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findJob103mtemp != null){
webservice_layer.Customer tebece0=findJob103mtemp.getCustomer();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findJob103mtemp != null){
%>
<%=findJob103mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 132:
        gotMethod = true;
        String customerId_41id=  request.getParameter("customerId135");
        int customerId_41idTemp  = Integer.parseInt(customerId_41id);
        webservice_layer.Job[] findCustomerJobArray132mtemp = sampleJobWebserviceProxyid.findCustomerJobArray(customerId_41idTemp);
if(findCustomerJobArray132mtemp == null){
%>
<%=findCustomerJobArray132mtemp %>
<%
}else{
        String tempreturnp133 = null;
        if(findCustomerJobArray132mtemp != null){
        java.util.List listreturnp133= java.util.Arrays.asList(findCustomerJobArray132mtemp);
        tempreturnp133 = listreturnp133.toString();
        }
        %>
        <%=tempreturnp133%>
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