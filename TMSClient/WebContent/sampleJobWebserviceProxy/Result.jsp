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
        sampleJobWebserviceProxyid.createJob(webservice_layer1Job_1id);
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
        java.lang.String deleteJob71mtemp = sampleJobWebserviceProxyid.deleteJob(webservice_layer1Job_27id);
if(deleteJob71mtemp == null){
%>
<%=deleteJob71mtemp %>
<%
}else{
        String tempResultreturnp72 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteJob71mtemp));
        %>
        <%= tempResultreturnp72 %>
        <%
}
break;
case 100:
        gotMethod = true;
        String startDate_41id=  request.getParameter("startDate105");
            java.util.Calendar startDate_41idTemp = null;
        if(!startDate_41id.equals("")){
        java.text.DateFormat dateFormatstartDate105 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate105  = dateFormatstartDate105.parse(startDate_41id);
         startDate_41idTemp = new java.util.GregorianCalendar();
        startDate_41idTemp.setTime(dateTempstartDate105);
        }
        String address_42id=  request.getParameter("address107");
            java.lang.String address_42idTemp = null;
        if(!address_42id.equals("")){
         address_42idTemp  = address_42id;
        }
        String endDate_43id=  request.getParameter("endDate109");
            java.util.Calendar endDate_43idTemp = null;
        if(!endDate_43id.equals("")){
        java.text.DateFormat dateFormatendDate109 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate109  = dateFormatendDate109.parse(endDate_43id);
         endDate_43idTemp = new java.util.GregorianCalendar();
        endDate_43idTemp.setTime(dateTempendDate109);
        }
        String telefone_45id=  request.getParameter("telefone113");
            java.lang.String telefone_45idTemp = null;
        if(!telefone_45id.equals("")){
         telefone_45idTemp  = telefone_45id;
        }
        String cvr_46id=  request.getParameter("cvr115");
        int cvr_46idTemp  = Integer.parseInt(cvr_46id);
        String address_47id=  request.getParameter("address117");
            java.lang.String address_47idTemp = null;
        if(!address_47id.equals("")){
         address_47idTemp  = address_47id;
        }
        String lastName_48id=  request.getParameter("lastName119");
            java.lang.String lastName_48idTemp = null;
        if(!lastName_48id.equals("")){
         lastName_48idTemp  = lastName_48id;
        }
        String firstName_49id=  request.getParameter("firstName121");
            java.lang.String firstName_49idTemp = null;
        if(!firstName_49id.equals("")){
         firstName_49idTemp  = firstName_49id;
        }
        String companyName_50id=  request.getParameter("companyName123");
            java.lang.String companyName_50idTemp = null;
        if(!companyName_50id.equals("")){
         companyName_50idTemp  = companyName_50id;
        }
        String id_51id=  request.getParameter("id125");
        int id_51idTemp  = Integer.parseInt(id_51id);
        %>
        <jsp:useBean id="webservice_layer1Customer_44id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_44id.setTelefone(telefone_45idTemp);
        webservice_layer1Customer_44id.setCvr(cvr_46idTemp);
        webservice_layer1Customer_44id.setAddress(address_47idTemp);
        webservice_layer1Customer_44id.setLastName(lastName_48idTemp);
        webservice_layer1Customer_44id.setFirstName(firstName_49idTemp);
        webservice_layer1Customer_44id.setCompanyName(companyName_50idTemp);
        webservice_layer1Customer_44id.setId(id_51idTemp);
        String id_52id=  request.getParameter("id127");
        int id_52idTemp  = Integer.parseInt(id_52id);
        %>
        <jsp:useBean id="webservice_layer1Job_40id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_40id.setStartDate(startDate_41idTemp);
        webservice_layer1Job_40id.setAddress(address_42idTemp);
        webservice_layer1Job_40id.setEndDate(endDate_43idTemp);
        webservice_layer1Job_40id.setCustomer(webservice_layer1Customer_44id);
        webservice_layer1Job_40id.setId(id_52idTemp);
        String competency_54id=  request.getParameter("competency131");
            java.lang.String competency_54idTemp = null;
        if(!competency_54id.equals("")){
         competency_54idTemp  = competency_54id;
        }
        String id_55id=  request.getParameter("id133");
        int id_55idTemp  = Integer.parseInt(id_55id);
        %>
        <jsp:useBean id="webservice_layer1Competency_53id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_53id.setCompetency(competency_54idTemp);
        webservice_layer1Competency_53id.setId(id_55idTemp);
        sampleJobWebserviceProxyid.addCompetency(webservice_layer1Job_40id,webservice_layer1Competency_53id);
break;
case 135:
        gotMethod = true;
        webservice_layer.Job[] findJobArray135mtemp = sampleJobWebserviceProxyid.findJobArray();
if(findJobArray135mtemp == null){
%>
<%=findJobArray135mtemp %>
<%
}else{
        String tempreturnp136 = null;
        if(findJobArray135mtemp != null){
        java.util.List listreturnp136= java.util.Arrays.asList(findJobArray135mtemp);
        tempreturnp136 = listreturnp136.toString();
        }
        %>
        <%=tempreturnp136%>
        <%
}
break;
case 138:
        gotMethod = true;
        String jobId_56id=  request.getParameter("jobId165");
        int jobId_56idTemp  = Integer.parseInt(jobId_56id);
        webservice_layer.Job findJob138mtemp = sampleJobWebserviceProxyid.findJob(jobId_56idTemp);
if(findJob138mtemp == null){
%>
<%=findJob138mtemp %>
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
if(findJob138mtemp != null){
java.util.Calendar typestartDate141 = findJob138mtemp.getStartDate();
        java.text.DateFormat dateFormatstartDate141 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate141 = typestartDate141.getTime();
        String tempResultstartDate141 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate141.format(datestartDate141));
        %>
        <%= tempResultstartDate141 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findJob138mtemp != null){
java.lang.String typeaddress143 = findJob138mtemp.getAddress();
        String tempResultaddress143 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress143));
        %>
        <%= tempResultaddress143 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findJob138mtemp != null){
java.util.Calendar typeendDate145 = findJob138mtemp.getEndDate();
        java.text.DateFormat dateFormatendDate145 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate145 = typeendDate145.getTime();
        String tempResultendDate145 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate145.format(dateendDate145));
        %>
        <%= tempResultendDate145 %>
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
if(findJob138mtemp != null){
webservice_layer.Customer tebece0=findJob138mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typetelefone149 = tebece0.getTelefone();
        String tempResulttelefone149 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone149));
        %>
        <%= tempResulttelefone149 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findJob138mtemp != null){
webservice_layer.Customer tebece0=findJob138mtemp.getCustomer();
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
if(findJob138mtemp != null){
webservice_layer.Customer tebece0=findJob138mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typeaddress153 = tebece0.getAddress();
        String tempResultaddress153 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress153));
        %>
        <%= tempResultaddress153 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findJob138mtemp != null){
webservice_layer.Customer tebece0=findJob138mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typelastName155 = tebece0.getLastName();
        String tempResultlastName155 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName155));
        %>
        <%= tempResultlastName155 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findJob138mtemp != null){
webservice_layer.Customer tebece0=findJob138mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typefirstName157 = tebece0.getFirstName();
        String tempResultfirstName157 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName157));
        %>
        <%= tempResultfirstName157 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findJob138mtemp != null){
webservice_layer.Customer tebece0=findJob138mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typecompanyName159 = tebece0.getCompanyName();
        String tempResultcompanyName159 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName159));
        %>
        <%= tempResultcompanyName159 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findJob138mtemp != null){
webservice_layer.Customer tebece0=findJob138mtemp.getCustomer();
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
if(findJob138mtemp != null){
%>
<%=findJob138mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 167:
        gotMethod = true;
        String customerId_57id=  request.getParameter("customerId170");
        int customerId_57idTemp  = Integer.parseInt(customerId_57id);
        webservice_layer.Job[] findCustomerJobArray167mtemp = sampleJobWebserviceProxyid.findCustomerJobArray(customerId_57idTemp);
if(findCustomerJobArray167mtemp == null){
%>
<%=findCustomerJobArray167mtemp %>
<%
}else{
        String tempreturnp168 = null;
        if(findCustomerJobArray167mtemp != null){
        java.util.List listreturnp168= java.util.Arrays.asList(findCustomerJobArray167mtemp);
        tempreturnp168 = listreturnp168.toString();
        }
        %>
        <%=tempreturnp168%>
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